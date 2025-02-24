import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/api/get_data/get_data.dart';
import 'movies_state.dart';

class MoviesBloc extends Cubit<MoviesState> {
  MoviesBloc(super.initialState);

  Future<void> fetchResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var moviesList = await DataRepository.getMovies();
      emit(state.copyWith(moviesList: moviesList));
    } catch (e){
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }



}