import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:potteriana_ult/main.dart';
import 'package:potteriana_ult/models/character/character.dart';
import 'package:potteriana_ult/models/movie/movie.dart';
import 'package:potteriana_ult/repository/api/character/character.graphql.dart';
import 'package:potteriana_ult/repository/api/characters/characters.graphql.dart';
import 'package:potteriana_ult/repository/api/get_books/get_bboks.graphql.dart';
import 'package:potteriana_ult/repository/api/get_movie/get_movie.graphql.dart';
import 'package:potteriana_ult/repository/api/get_movies/get_movies.graphql.dart';
import 'package:potteriana_ult/repository/api/get_potion/get_potion.graphql.dart';
import 'package:potteriana_ult/repository/api/get_potions_list/get_potions.graphql.dart';

import '../../../models/book/book.dart';
import '../../../models/potion/potion.dart';
import '../../../models/spell/spell.dart';
import '../get_book/get_book.graphql.dart';
import '../get_spell/get_spell.graphql.dart';
import '../get_spells_list/get_spells_list.graphql.dart';

class DataRepository {
  static final client = GraphQLClient(
      link: HttpLink("https://api.potterdb.com/graphql/"),
      cache: GraphQLCache(),
      defaultPolicies:
          DefaultPolicies(query: Policies(fetch: FetchPolicy.noCache)));

  static Future<List<Book>> getBooks() async {
    String defaultExceptionMessage = "Unknown Error";
    QueryResult<Query_Bboks> result = await client.query_Bboks();

    if (!result.hasException) {
      if (result.parsedData?.books.nodes != null) {
        return result.parsedData!.books.nodes!.nonNulls
            .map(Book.fromDTOGetBooks)
            .toList();
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }

  static Future<Book> getBook(String slug) async {
    String defaultExceptionMessage = "Unknown Error";
    Options_Query_Book;
    QueryResult<Query_Book> result = await client.query_Book(
        Options_Query_Book(variables: Variables_Query_Book(slug: slug)));

    if (!result.hasException) {
      if (result.parsedData?.book != null) {
        return Book.fromDTOGetBook(result.parsedData!.book!);
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }

  static Future<(List<Character>, String)> getCharacters(String? after) async {
    String defaultExceptionMessage = "Unknown Error";
    QueryResult<Query_Characters> result = await client.query_Characters(
        Options_Query_Characters(
            variables: Variables_Query_Characters(after: after)));

    if (!result.hasException) {
      if (result.parsedData?.characters.nodes != null) {
        return (
          result.parsedData!.characters.nodes!.nonNulls
              .map(Character.fromDTOGetCharacters)
              .toList(),
          result.parsedData!.characters.pageInfo.endCursor!,
        );
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }

  static Future<Character> getCharacter(String slug) async {
    String defaultExceptionMessage = "Unknown Error";
    QueryResult<Query_Character> result = await client.query_Character(
        Options_Query_Character(
            variables: Variables_Query_Character(slug: slug)));
    if (!result.hasException) {
      if (result.parsedData?.character != null) {
        return Character.fromDTOGetCharacter(result.parsedData!.character!);
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }

  static Future<List<Movie>> getMovies() async {
    String defaultExceptionMessage = "Unknown Error";
    QueryResult<Query_Movies> result = await client.query_Movies();

    if (!result.hasException) {
      if (result.parsedData?.movies.nodes != null) {
        return result.parsedData!.movies.nodes!.nonNulls
            .map(Movie.fromDTOGetMovies)
            .toList();
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }

  static Future<Movie> getMovie(String slug) async {
    String defaultExceptionMessage = "Unknown Error";
    Options_Query_Movie;
    QueryResult<Query_Movie> result = await client.query_Movie(
        Options_Query_Movie(variables: Variables_Query_Movie(slug: slug)));

    if (!result.hasException) {
      if (result.parsedData?.movie != null) {
        return Movie.fromDTOGetMovie(result.parsedData!.movie!);
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }

  static Future<(List<Potion>, String)> getPotionsList(String? after) async {
    String defaultExceptionMessage = "Unknown Error";
    QueryResult<Query_Potions> result = await client.query_Potions(
        Options_Query_Potions(
            variables: Variables_Query_Potions(after: after)));

    if (!result.hasException) {
      if (result.parsedData?.potions.nodes != null) {
        return (
        result.parsedData!.potions.nodes!.nonNulls
            .map(Potion.fromDTOGetPotionsList)
            .toList(),
        result.parsedData!.potions.pageInfo.endCursor!,
        );
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }

  static Future<Potion> getPotion(String slug) async {
    String defaultExceptionMessage = "Unknown Error";
    QueryResult<Query_Potion> result = await client.query_Potion(
        Options_Query_Potion(
            variables: Variables_Query_Potion(slug: slug)));
    if (!result.hasException) {
      if (result.parsedData?.potion != null) {
        return Potion.fromDTOGetPotion(result.parsedData!.potion!);
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }

  static Future<(List<Spell>, String)> getSpellsList(String? after) async {
    String defaultExceptionMessage = "Unknown Error";
    QueryResult<Query_Spells> result = await client.query_Spells(
        Options_Query_Spells(
            variables: Variables_Query_Spells(after: after)));

    if (!result.hasException) {
      if (result.parsedData?.spells.nodes != null) {
        return (
        result.parsedData!.spells.nodes!.nonNulls
            .map(Spell.fromDTOGetSpellsList)
            .toList(),
        result.parsedData!.spells.pageInfo.endCursor!,
        );
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }

  static Future<Spell> getSpell(String slug) async {
    String defaultExceptionMessage = "Unknown Error";
    QueryResult<Query_Spell> result = await client.query_Spell(
        Options_Query_Spell(
            variables: Variables_Query_Spell(slug: slug)));
    if (!result.hasException) {
      if (result.parsedData?.spell != null) {
        return Spell.fromDTOGetSpell(result.parsedData!.spell!);
      }
    }
    throw result.exception ?? Exception(defaultExceptionMessage);
  }
}
