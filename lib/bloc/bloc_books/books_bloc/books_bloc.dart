import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/repository/api/get_data/get_data.dart';

import '../../../models/book/book.dart';
import '../books_state.dart';

class BooksBloc extends Cubit<BooksState> {
  BooksBloc(super.initialState);

  Future<void> fetchResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var bookerCatch = await DataRepository.getBooks();
      emit(state.copyWith(bookerCatch: bookerCatch));
    } catch (e){
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }



}