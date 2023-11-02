import 'package:alarm_app/features/home/data/models/book_model/book_model.dart';
import 'package:alarm_app/features/home/data/repositories/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepository) : super(NewestBooksInitial());
  final HomeRepository homeRepository;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var response = await homeRepository.fetchNewestBooks();
    response.fold((failure) {
      emit(NewestBooksFailure(errMsg: failure.errMsg));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
