// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesStateImpl _$$MoviesStateImplFromJson(Map<String, dynamic> json) =>
    _$MoviesStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      moviesList: (json['moviesList'] as List<dynamic>?)
              ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$MoviesStateImplToJson(_$MoviesStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'moviesList': instance.moviesList,
      'isLoading': instance.isLoading,
    };
