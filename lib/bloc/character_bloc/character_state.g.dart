// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterStateImpl _$$CharacterStateImplFromJson(Map<String, dynamic> json) =>
    _$CharacterStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      character: Character.fromJson(json['character'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$CharacterStateImplToJson(
        _$CharacterStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'character': instance.character,
      'isLoading': instance.isLoading,
    };
