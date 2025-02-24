import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potteriana_ult/repository/api/character/character.graphql.dart';
import 'package:potteriana_ult/repository/api/characters/characters.graphql.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    @Default([])
    List<String>? aliasNames,
    String? animagus,
    String? bloodStatus,
    String? boggart,
    String? born,
    String? died,
    String? eyeColor,
    @Default([])
    List<String>? familyMembers,
    String? gender,
    String? hairColor,
    String? height,
    String? house,
    String? image,
    @Default([])
    List<String>? jobs,
    String? maritalStatus,
    String? name,
    String? nationality,
    String? patronus,
    @Default([])
    List<String>? romances,
    String? skinColor,
    String? slug,
    String? species,
    @Default([])
    List<String>? titles,
    @Default([])
    List<String>? wands,
    String? weight,
    String? wiki,
  }) = _Character;



  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
  factory Character.fromDTOGetCharacters(Query_Characters_characters_nodes dTO) =>
      Character(slug: dTO.slug, image: dTO.image, name: dTO.name);
  factory Character.fromDTOGetCharacter(Query_Character_character dTO) => Character(
    slug: dTO.slug,
    aliasNames: dTO.aliasNames,
    animagus: dTO.animagus,
    bloodStatus: dTO.bloodStatus,
    boggart: dTO.boggart,
    born: dTO.born,
    died: dTO.died,
    eyeColor: dTO.eyeColor,
    familyMembers: dTO.familyMembers,
    gender: dTO.gender,
    hairColor: dTO.hairColor,
    height: dTO.height,
    house: dTO.house,
    image: dTO.image,
    jobs: dTO.jobs,
    maritalStatus: dTO.maritalStatus,
    name: dTO.name,
    nationality: dTO.nationality,
    patronus: dTO.patronus,
    romances: dTO.romances,
    skinColor: dTO.skinColor,
    species: dTO.species,
    titles: dTO.titles,
    wands: dTO.wands,
    weight: dTO.weight,
    wiki: dTO.wiki,
  );
}