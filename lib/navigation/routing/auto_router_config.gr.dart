// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/cupertino.dart' as _i19;
import 'package:flutter/material.dart' as _i15;
import 'package:potteriana_ult/models/book/book.dart' as _i16;
import 'package:potteriana_ult/models/character/character.dart' as _i17;
import 'package:potteriana_ult/models/movie/movie.dart' as _i18;
import 'package:potteriana_ult/models/potion/potion.dart' as _i20;
import 'package:potteriana_ult/models/spell/spell.dart' as _i21;
import 'package:potteriana_ult/ui/book_page/book_page.dart' as _i1;
import 'package:potteriana_ult/ui/category_page/category_page.dart' as _i2;
import 'package:potteriana_ult/ui/character_page/character_page.dart' as _i3;
import 'package:potteriana_ult/ui/characters_page/characters_page.dart' as _i4;
import 'package:potteriana_ult/ui/gif_page/gif_page.dart' as _i5;
import 'package:potteriana_ult/ui/home_page/home_page.dart' as _i8;
import 'package:potteriana_ult/ui/movie_page/movie_page.dart' as _i6;
import 'package:potteriana_ult/ui/movies_page/movies_page.dart' as _i7;
import 'package:potteriana_ult/ui/potion_page/potion_page.dart' as _i9;
import 'package:potteriana_ult/ui/potions_list_page/potions_list_page.dart'
    as _i10;
import 'package:potteriana_ult/ui/spell_page/spell_page.dart' as _i11;
import 'package:potteriana_ult/ui/spells_list_page/spells_list_page.dart'
    as _i12;
import 'package:potteriana_ult/ui/sub_category_page/sub_category_page.dart'
    as _i13;

/// generated route for
/// [_i1.BookPage]
class BookRoute extends _i14.PageRouteInfo<BookRouteArgs> {
  BookRoute({
    _i15.Key? key,
    required _i16.Book passedBook,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          BookRoute.name,
          args: BookRouteArgs(
            key: key,
            passedBook: passedBook,
          ),
          initialChildren: children,
        );

  static const String name = 'BookRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookRouteArgs>();
      return _i14.WrappedRoute(
          child: _i1.BookPage(
        key: args.key,
        passedBook: args.passedBook,
      ));
    },
  );
}

class BookRouteArgs {
  const BookRouteArgs({
    this.key,
    required this.passedBook,
  });

  final _i15.Key? key;

  final _i16.Book passedBook;

  @override
  String toString() {
    return 'BookRouteArgs{key: $key, passedBook: $passedBook}';
  }
}

/// generated route for
/// [_i2.CategoryPage]
class CategoryRoute extends _i14.PageRouteInfo<void> {
  const CategoryRoute({List<_i14.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return _i14.WrappedRoute(child: _i2.CategoryPage());
    },
  );
}

/// generated route for
/// [_i3.CharacterPage]
class CharacterRoute extends _i14.PageRouteInfo<CharacterRouteArgs> {
  CharacterRoute({
    _i15.Key? key,
    required _i17.Character passedCharacter,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          CharacterRoute.name,
          args: CharacterRouteArgs(
            key: key,
            passedCharacter: passedCharacter,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CharacterRouteArgs>();
      return _i14.WrappedRoute(
          child: _i3.CharacterPage(
        key: args.key,
        passedCharacter: args.passedCharacter,
      ));
    },
  );
}

class CharacterRouteArgs {
  const CharacterRouteArgs({
    this.key,
    required this.passedCharacter,
  });

  final _i15.Key? key;

  final _i17.Character passedCharacter;

  @override
  String toString() {
    return 'CharacterRouteArgs{key: $key, passedCharacter: $passedCharacter}';
  }
}

/// generated route for
/// [_i4.CharactersPage]
class CharactersRoute extends _i14.PageRouteInfo<void> {
  const CharactersRoute({List<_i14.PageRouteInfo>? children})
      : super(
          CharactersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharactersRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return _i14.WrappedRoute(child: _i4.CharactersPage());
    },
  );
}

/// generated route for
/// [_i5.GifPage]
class GifRoute extends _i14.PageRouteInfo<void> {
  const GifRoute({List<_i14.PageRouteInfo>? children})
      : super(
          GifRoute.name,
          initialChildren: children,
        );

  static const String name = 'GifRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i5.GifPage();
    },
  );
}

/// generated route for
/// [_i6.MoviePage]
class MovieRoute extends _i14.PageRouteInfo<MovieRouteArgs> {
  MovieRoute({
    _i15.Key? key,
    required _i18.Movie passedMovie,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          MovieRoute.name,
          args: MovieRouteArgs(
            key: key,
            passedMovie: passedMovie,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieRouteArgs>();
      return _i14.WrappedRoute(
          child: _i6.MoviePage(
        key: args.key,
        passedMovie: args.passedMovie,
      ));
    },
  );
}

class MovieRouteArgs {
  const MovieRouteArgs({
    this.key,
    required this.passedMovie,
  });

  final _i15.Key? key;

  final _i18.Movie passedMovie;

  @override
  String toString() {
    return 'MovieRouteArgs{key: $key, passedMovie: $passedMovie}';
  }
}

/// generated route for
/// [_i7.MoviesPage]
class MoviesRoute extends _i14.PageRouteInfo<void> {
  const MoviesRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoviesRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return _i14.WrappedRoute(child: const _i7.MoviesPage());
    },
  );
}

/// generated route for
/// [_i8.MyHomePage]
class MyHomeRoute extends _i14.PageRouteInfo<void> {
  const MyHomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i8.MyHomePage();
    },
  );
}

/// generated route for
/// [_i9.PotionPage]
class PotionRoute extends _i14.PageRouteInfo<PotionRouteArgs> {
  PotionRoute({
    _i19.Key? key,
    required _i20.Potion passedPotion,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          PotionRoute.name,
          args: PotionRouteArgs(
            key: key,
            passedPotion: passedPotion,
          ),
          initialChildren: children,
        );

  static const String name = 'PotionRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PotionRouteArgs>();
      return _i14.WrappedRoute(
          child: _i9.PotionPage(
        key: args.key,
        passedPotion: args.passedPotion,
      ));
    },
  );
}

class PotionRouteArgs {
  const PotionRouteArgs({
    this.key,
    required this.passedPotion,
  });

  final _i19.Key? key;

  final _i20.Potion passedPotion;

  @override
  String toString() {
    return 'PotionRouteArgs{key: $key, passedPotion: $passedPotion}';
  }
}

/// generated route for
/// [_i10.PotionsListPage]
class PotionsListRoute extends _i14.PageRouteInfo<void> {
  const PotionsListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          PotionsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PotionsListRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return _i14.WrappedRoute(child: _i10.PotionsListPage());
    },
  );
}

/// generated route for
/// [_i11.SpellPage]
class SpellRoute extends _i14.PageRouteInfo<SpellRouteArgs> {
  SpellRoute({
    _i19.Key? key,
    required _i21.Spell passedSpell,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SpellRoute.name,
          args: SpellRouteArgs(
            key: key,
            passedSpell: passedSpell,
          ),
          initialChildren: children,
        );

  static const String name = 'SpellRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SpellRouteArgs>();
      return _i14.WrappedRoute(
          child: _i11.SpellPage(
        key: args.key,
        passedSpell: args.passedSpell,
      ));
    },
  );
}

class SpellRouteArgs {
  const SpellRouteArgs({
    this.key,
    required this.passedSpell,
  });

  final _i19.Key? key;

  final _i21.Spell passedSpell;

  @override
  String toString() {
    return 'SpellRouteArgs{key: $key, passedSpell: $passedSpell}';
  }
}

/// generated route for
/// [_i12.SpellsListPage]
class SpellsListRoute extends _i14.PageRouteInfo<void> {
  const SpellsListRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SpellsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpellsListRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return _i14.WrappedRoute(child: _i12.SpellsListPage());
    },
  );
}

/// generated route for
/// [_i13.SubCategoryPage]
class SubCategoryRoute extends _i14.PageRouteInfo<void> {
  const SubCategoryRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SubCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i13.SubCategoryPage();
    },
  );
}
