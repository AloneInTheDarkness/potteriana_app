import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potteriana_ult/models/spell/spell.dart';

part 'spells_list_state.freezed.dart';
part 'spells_list_state.g.dart';

@freezed
class SpellsListState with _$SpellsListState {
  const factory SpellsListState({
    String? exceptionWarning,
    @Default([])
    List<Spell> spellsList,
    @Default(false)
    bool isLoading,
    String? cursor,
    String? name,
  }) = _SpellsListState;



  factory SpellsListState.fromJson(Map<String, dynamic> json) =>
      _$SpellsListStateFromJson(json);
}