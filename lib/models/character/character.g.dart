// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      aliasNames: (json['aliasNames'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      animagus: json['animagus'] as String?,
      bloodStatus: json['bloodStatus'] as String?,
      boggart: json['boggart'] as String?,
      born: json['born'] as String?,
      died: json['died'] as String?,
      eyeColor: json['eyeColor'] as String?,
      familyMembers: (json['familyMembers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      gender: json['gender'] as String?,
      hairColor: json['hairColor'] as String?,
      height: json['height'] as String?,
      house: json['house'] as String?,
      image: json['image'] as String?,
      jobs:
          (json['jobs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      maritalStatus: json['maritalStatus'] as String?,
      name: json['name'] as String?,
      nationality: json['nationality'] as String?,
      patronus: json['patronus'] as String?,
      romances: (json['romances'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      skinColor: json['skinColor'] as String?,
      slug: json['slug'] as String?,
      species: json['species'] as String?,
      titles: (json['titles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      wands:
          (json['wands'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      weight: json['weight'] as String?,
      wiki: json['wiki'] as String?,
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'aliasNames': instance.aliasNames,
      'animagus': instance.animagus,
      'bloodStatus': instance.bloodStatus,
      'boggart': instance.boggart,
      'born': instance.born,
      'died': instance.died,
      'eyeColor': instance.eyeColor,
      'familyMembers': instance.familyMembers,
      'gender': instance.gender,
      'hairColor': instance.hairColor,
      'height': instance.height,
      'house': instance.house,
      'image': instance.image,
      'jobs': instance.jobs,
      'maritalStatus': instance.maritalStatus,
      'name': instance.name,
      'nationality': instance.nationality,
      'patronus': instance.patronus,
      'romances': instance.romances,
      'skinColor': instance.skinColor,
      'slug': instance.slug,
      'species': instance.species,
      'titles': instance.titles,
      'wands': instance.wands,
      'weight': instance.weight,
      'wiki': instance.wiki,
    };
