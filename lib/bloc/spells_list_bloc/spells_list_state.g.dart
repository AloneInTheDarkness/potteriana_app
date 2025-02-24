// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spells_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpellsListStateImpl _$$SpellsListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SpellsListStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      spellsList: (json['spellsList'] as List<dynamic>?)
              ?.map((e) => Spell.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      cursor: json['cursor'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$SpellsListStateImplToJson(
        _$SpellsListStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'spellsList': instance.spellsList,
      'isLoading': instance.isLoading,
      'cursor': instance.cursor,
      'name': instance.name,
    };
