// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpellStateImpl _$$SpellStateImplFromJson(Map<String, dynamic> json) =>
    _$SpellStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      spell: Spell.fromJson(json['spell'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$SpellStateImplToJson(_$SpellStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'spell': instance.spell,
      'isLoading': instance.isLoading,
    };
