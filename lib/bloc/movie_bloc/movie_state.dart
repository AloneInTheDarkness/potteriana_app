import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/movie/movie.dart';

part 'movie_state.freezed.dart';
part 'movie_state.g.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState({
    String? exceptionWarning,
    required Movie movie,
    @Default(false)
    bool isLoading
  }) = _MovieState;
  
  

  factory MovieState.fromJson(Map<String, dynamic> json) =>
      _$MovieStateFromJson(json);
}