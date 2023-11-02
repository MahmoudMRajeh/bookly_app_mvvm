import 'package:alarm_app/features/home/data/models/book_model/book_model.dart';
import 'package:alarm_app/features/home/data/repositories/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepository) : super(FeaturedBooksInitial());
  final HomeRepository homeRepository;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var response = await homeRepository.fetchFeaturedBooks();
    response.fold((failure) {
      emit(FeaturedBooksFailure(errMsg: failure.errMsg));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
