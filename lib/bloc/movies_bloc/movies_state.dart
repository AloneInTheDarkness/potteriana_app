import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potteriana_ult/models/movie/movie.dart';

part 'movies_state.freezed.dart';
part 'movies_state.g.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState({
    String? exceptionWarning,
    @Default([])
    List<Movie> moviesList,
    @Default(false)
    bool isLoading
  }) = _MoviesState;



  factory MoviesState.fromJson(Map<String, dynamic> json) =>
      _$MoviesStateFromJson(json);
}