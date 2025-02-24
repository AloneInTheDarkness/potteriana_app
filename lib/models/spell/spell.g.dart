// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpellImpl _$$SpellImplFromJson(Map<String, dynamic> json) => _$SpellImpl(
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      wiki: json['wiki'] as String?,
      effect: json['effect'] as String?,
      category: json['category'] as String?,
      creator: json['creator'] as String?,
      hand: json['hand'] as String?,
      incantation: json['incantation'] as String?,
      light: json['light'] as String?,
    );

Map<String, dynamic> _$$SpellImplToJson(_$SpellImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'image': instance.image,
      'wiki': instance.wiki,
      'effect': instance.effect,
      'category': instance.category,
      'creator': instance.creator,
      'hand': instance.hand,
      'incantation': instance.incantation,
      'light': instance.light,
    };
