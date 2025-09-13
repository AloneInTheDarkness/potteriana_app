import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:potteriana_ult/navigation/routing/auto_router_config.gr.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';
import 'package:potteriana_ult/ui/shared/buttons/category_button.dart';
import 'package:talker/talker.dart';

import '../../navigation/routing/auto_router_config.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  final talker = Talker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomePage();
}

class _HomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.gray400,
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        centerTitle: true,
        title: const Text("Categories"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryButton(
                onTapped: () {
                  context.router.push(const CategoryRoute());
                },
                text: "BOOKS",
              ),
              const SizedBox(
                height: 10,
              ),
              CategoryButton(
                onTapped: () {
                  context.router.push(const CharactersRoute());
                },
                text: "CHARACTERS",
              ),
              const SizedBox(
                height: 10,
              ),
              CategoryButton(
                onTapped: () {
                  context.router.push(const MoviesRoute());
                },
                text: "MOVIES",
              ),
              const SizedBox(
                height: 10,
              ),
              CategoryButton(
                onTapped: () {
                  context.router.push(const PotionsListRoute());
                },
                text: "POTIONS",
              ),
              const SizedBox(
                height: 10,
              ),
              CategoryButton(
                onTapped: () {
                  context.router.push(const SpellsListRoute());
                },
                text: "SPELLS",
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
