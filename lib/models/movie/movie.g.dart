// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      slug: json['slug'] as String?,
      title: json['title'] as String?,
      boxOffice: json['boxOffice'] as String?,
      budget: json['budget'] as String?,
      poster: json['poster'] as String?,
      rating: json['rating'] as String?,
      runningTime: json['runningTime'] as String?,
      summary: json['summary'] as String?,
      trailer: json['trailer'] as String?,
      wiki: json['wiki'] as String?,
      releaseDate: json['releaseDate'] as String?,
      cinematographers: (json['cinematographers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      directors: (json['directors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      distributors: (json['distributors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      editors: (json['editors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      musicComposers: (json['musicComposers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      producers: (json['producers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      screenwriters: (json['screenwriters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'boxOffice': instance.boxOffice,
      'budget': instance.budget,
      'poster': instance.poster,
      'rating': instance.rating,
      'runningTime': instance.runningTime,
      'summary': instance.summary,
      'trailer': instance.trailer,
      'wiki': instance.wiki,
      'releaseDate': instance.releaseDate,
      'cinematographers': instance.cinematographers,
      'directors': instance.directors,
      'distributors': instance.distributors,
      'editors': instance.editors,
      'musicComposers': instance.musicComposers,
      'producers': instance.producers,
      'screenwriters': instance.screenwriters,
    };
