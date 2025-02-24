// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharactersStateImpl _$$CharactersStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CharactersStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      charactersList: (json['charactersList'] as List<dynamic>?)
              ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      cursor: json['cursor'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CharactersStateImplToJson(
        _$CharactersStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'charactersList': instance.charactersList,
      'isLoading': instance.isLoading,
      'cursor': instance.cursor,
      'name': instance.name,
    };
