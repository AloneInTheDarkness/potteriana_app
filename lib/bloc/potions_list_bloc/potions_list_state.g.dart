// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'potions_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PotionsListStateImpl _$$PotionsListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PotionsListStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      potionsList: (json['potionsList'] as List<dynamic>?)
              ?.map((e) => Potion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      cursor: json['cursor'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PotionsListStateImplToJson(
        _$PotionsListStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'potionsList': instance.potionsList,
      'isLoading': instance.isLoading,
      'cursor': instance.cursor,
      'name': instance.name,
    };
