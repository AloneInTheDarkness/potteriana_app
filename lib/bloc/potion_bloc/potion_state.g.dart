// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'potion_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PotionStateImpl _$$PotionStateImplFromJson(Map<String, dynamic> json) =>
    _$PotionStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      potion: Potion.fromJson(json['potion'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$PotionStateImplToJson(_$PotionStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'potion': instance.potion,
      'isLoading': instance.isLoading,
    };
