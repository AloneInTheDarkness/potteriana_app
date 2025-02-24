import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/repository/api/get_data/get_data.dart';

import '../../../models/book/book.dart';
import '../../../repository/api/get_book/get_book.graphql.dart';
import '../book_state.dart';
import '../books_state.dart';

class BookBloc extends Cubit<BookState> {
  BookBloc(super.initialState,);
  
  Future<void> fetchDetailResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var book = await DataRepository.getBook(state.book.slug!);
      emit(state.copyWith(book: book));
    } catch (e) {
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }
}
