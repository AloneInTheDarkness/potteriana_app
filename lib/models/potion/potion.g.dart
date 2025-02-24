// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'potion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PotionImpl _$$PotionImplFromJson(Map<String, dynamic> json) => _$PotionImpl(
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      wiki: json['wiki'] as String?,
      characteristics: json['characteristics'] as String?,
      difficulty: json['difficulty'] as String?,
      effect: json['effect'] as String?,
      ingredients: json['ingredients'] as String?,
      inventors: json['inventors'] as String?,
      manufacturers: json['manufacturers'] as String?,
      sideEffects: json['sideEffects'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$PotionImplToJson(_$PotionImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'image': instance.image,
      'wiki': instance.wiki,
      'characteristics': instance.characteristics,
      'difficulty': instance.difficulty,
      'effect': instance.effect,
      'ingredients': instance.ingredients,
      'inventors': instance.inventors,
      'manufacturers': instance.manufacturers,
      'sideEffects': instance.sideEffects,
      'time': instance.time,
    };
