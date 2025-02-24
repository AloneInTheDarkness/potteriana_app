import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/spell/spell.dart';

part 'spell_state.freezed.dart';
part 'spell_state.g.dart';

@freezed
class SpellState with _$SpellState {
  const factory SpellState({
    String? exceptionWarning,
    required Spell spell,
    @Default(false)
    bool isLoading
  }) = _SpellState;



  factory SpellState.fromJson(Map<String, dynamic> json) =>
      _$SpellStateFromJson(json);
}