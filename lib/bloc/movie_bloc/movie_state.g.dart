// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieStateImpl _$$MovieStateImplFromJson(Map<String, dynamic> json) =>
    _$MovieStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      movie: Movie.fromJson(json['movie'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$MovieStateImplToJson(_$MovieStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'movie': instance.movie,
      'isLoading': instance.isLoading,
    };
