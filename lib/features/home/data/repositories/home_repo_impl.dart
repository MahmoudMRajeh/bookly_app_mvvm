import 'package:alarm_app/core/errors/failures.dart';
import 'package:alarm_app/features/home/data/models/book_model/book_model.dart';
import 'package:alarm_app/features/home/data/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl implements HomeRepository{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    
    throw UnimplementedError();
  }

}