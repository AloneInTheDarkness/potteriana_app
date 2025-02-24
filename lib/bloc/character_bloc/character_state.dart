import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potteriana_ult/models/character/character.dart';

part 'character_state.freezed.dart';
part 'character_state.g.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    String? exceptionWarning,
    required Character character,
    @Default(false)
    bool isLoading
  }) = _CharacterState;



  factory CharacterState.fromJson(Map<String, dynamic> json) =>
      _$CharacterStateFromJson(json);
}