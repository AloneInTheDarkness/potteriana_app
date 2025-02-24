import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:potteriana_ult/navigation/routing/auto_router_config.gr.dart';
import 'package:potteriana_ult/ui/book_page/book_page.dart';
import 'package:potteriana_ult/ui/gif_page/gif_page.dart';
import 'package:potteriana_ult/ui/home_page/home_page.dart';
import 'package:potteriana_ult/ui/potion_page/potion_page.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MyHomeRoute.page, initial: true),
    AutoRoute(page: CategoryRoute.page),
    AutoRoute(page: SubCategoryRoute.page),
    AutoRoute(page: BookRoute.page),
    AutoRoute(page: GifRoute.page),
    AutoRoute(page: CharactersRoute.page),
    AutoRoute(page: CharacterRoute.page),
    AutoRoute(page: MoviesRoute.page),
    AutoRoute(page: MovieRoute.page),
    AutoRoute(page: PotionRoute.page),
    AutoRoute(page: PotionsListRoute.page),
    AutoRoute(page: SpellRoute.page),
    AutoRoute(page: SpellsListRoute.page),
  ];
}