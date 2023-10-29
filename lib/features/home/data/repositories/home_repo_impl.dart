import 'package:alarm_app/core/errors/failures.dart';
import 'package:alarm_app/core/utils/dio_servieces.dart';
import 'package:alarm_app/features/home/data/models/book_model/book_model.dart';
import 'package:alarm_app/features/home/data/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl implements HomeRepository {
  final DioServices dioServices;

  HomeRepositoryImpl({required this.dioServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await dioServices.get(
          endPoints:
              "volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest");
      List<BookModel> books = [];
      for (var i in data["items"]) {
        books.add(BookModel.fromJson(i));
      }
      return Right(books);
    } on Exception catch (error) {
      return Left(ServerFailure(errMsg: 'Failed to fetch data'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
