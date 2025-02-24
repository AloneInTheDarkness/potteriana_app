import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:potteriana_ult/navigation/routing/auto_router_config.gr.dart';
import 'package:potteriana_ult/repository/api/get_books/get_bboks.graphql.dart';

import '../../navigation/routing/auto_router_config.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

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
  final String title = "hui";

  @override
  State<MyHomePage> createState() => _HomePage();
}

class _HomePage extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  context.router.push(const CategoryRoute());
                },
                child: const Text("BOOKS")),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  context.router.push(const CharactersRoute());
                },
                child: const Text("CHARACTERS")),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  context.router.push(const MoviesRoute());
                },
                child: const Text("MOVIES")),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  context.router.push(const PotionsListRoute());
                },
                child: const Text("POTIONS")),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  context.router.push(const SpellsListRoute());
                },
                child: const Text("SPELLS")),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
