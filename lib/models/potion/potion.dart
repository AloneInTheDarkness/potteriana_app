import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potteriana_ult/repository/api/get_potions_list/get_potions.graphql.dart';

import '../../repository/api/get_potion/get_potion.graphql.dart';

part 'potion.freezed.dart';
part 'potion.g.dart';

@freezed
class Potion with _$Potion {
  const factory Potion({
    String? slug,
    String? name,
    String? image,
    String? wiki,
    String? characteristics,
    String? difficulty,
    String? effect,
    String? ingredients,
    String? inventors,
    String? manufacturers,
    String? sideEffects,
    String? time,
  }) = _Potion;



  factory Potion.fromJson(Map<String, dynamic> json) =>
      _$PotionFromJson(json);
  factory Potion.fromDTOGetPotionsList(Query_Potions_potions_nodes dTO) =>
      Potion(slug: dTO.slug, image: dTO.image, name: dTO.name);
  factory Potion.fromDTOGetPotion(Query_Potion_potion dTO) => Potion(
    slug: dTO.slug,
    image: dTO.image,
    name: dTO.name,
    wiki: dTO.wiki,
    characteristics: dTO.characteristics,
    difficulty: dTO.difficulty,
    effect: dTO.effect,
    ingredients: dTO.ingredients,
    inventors: dTO.inventors,
    manufacturers: dTO.manufacturers,
    sideEffects: dTO.sideEffects,
    time: dTO.time,
  );
}