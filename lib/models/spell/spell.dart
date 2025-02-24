import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repository/api/get_spell/get_spell.graphql.dart';
import '../../repository/api/get_spells_list/get_spells_list.graphql.dart';

part 'spell.freezed.dart';
part 'spell.g.dart';

@freezed
class Spell with _$Spell {
  const factory Spell({
    String? slug,
    String? name,
    String? image,
    String? wiki,
    String? effect,
    String? category,
    String? creator,
    String? hand,
    String? incantation,
    String? light,
  }) = _Spell;



  factory Spell.fromJson(Map<String, dynamic> json) =>
      _$SpellFromJson(json);
  factory Spell.fromDTOGetSpellsList(Query_Spells_spells_nodes dTO) =>
      Spell(slug: dTO.slug, image: dTO.image, name: dTO.name);
  factory Spell.fromDTOGetSpell(Query_Spell_spell dTO) => Spell(
    slug: dTO.slug,
    image: dTO.image,
    name: dTO.name,
    wiki: dTO.wiki,
    effect: dTO.effect,
    category: dTO.category,
    creator: dTO.creator,
    hand: dTO.hand,
    incantation: dTO.incantation,
    light: dTO.light,
  );
}