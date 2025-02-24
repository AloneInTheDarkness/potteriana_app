// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      author: json['author'] as String?,
      slug: json['slug'] as String?,
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      cover: json['cover'] as String?,
      dedication: json['dedication'] as String?,
      pages: (json['pages'] as num?)?.toInt(),
      releaseDate: json['releaseDate'] as String?,
      wiki: json['wiki'] as String?,
      chapters: json['chapters'] == null
          ? null
          : Chapters.fromJson(json['chapters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'slug': instance.slug,
      'title': instance.title,
      'summary': instance.summary,
      'cover': instance.cover,
      'dedication': instance.dedication,
      'pages': instance.pages,
      'releaseDate': instance.releaseDate,
      'wiki': instance.wiki,
      'chapters': instance.chapters,
    };
