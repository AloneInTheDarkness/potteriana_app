import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potteriana_ult/models/character/character.dart';

part 'characters_state.freezed.dart';
part 'characters_state.g.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState({
    String? exceptionWarning,
    @Default([])
    List<Character> charactersList,
    @Default(false)
    bool isLoading,
    String? cursor,
    String? name,
  }) = _CharactersState;



  factory CharactersState.fromJson(Map<String, dynamic> json) =>
      _$CharactersStateFromJson(json);
}