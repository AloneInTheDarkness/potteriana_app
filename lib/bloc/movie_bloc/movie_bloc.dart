import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/api/get_data/get_data.dart';
import 'movie_state.dart';

class MovieBloc extends Cubit<MovieState> {
  MovieBloc(super.initialState,);

  Future<void> fetchDetailResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var movie = await DataRepository.getMovie(state.movie.slug!);
      emit(state.copyWith(movie: movie));
    } catch (e) {
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }
}