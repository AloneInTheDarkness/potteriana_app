import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/bloc/potion_bloc/potion_bloc.dart';
import 'package:potteriana_ult/bloc/potion_bloc/potion_state.dart';

import '../../models/potion/potion.dart';
import '../../navigation/routing/auto_router_config.gr.dart';

@RoutePage()
class PotionPage extends StatelessWidget implements AutoRouteWrapper {
  const PotionPage({
    super.key,
    required this.passedPotion,
  });

  final Potion passedPotion;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PotionBloc, PotionState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text("${state.potion.name}"),
            ),
            body: ListView(

              children: [
                if (state.potion.image != null)
                  Image.network(state.potion.image.toString(),)
                else
                  Image.asset(
                      'assets/images/question_mark.png'),
                if (state.potion.name != null)
                  Text("Name: ${state.potion.name}"),
                if (state.potion.effect != null)
                  Text("Effect: ${state.potion.effect}"),
                if (state.potion.sideEffects != null)
                  Text("Side effects: ${state.potion.effect}"),
                if (state.potion.time != null)
                  Text("Time: ${state.potion.time}"),
                if (state.potion.manufacturers != null)
                  Text("Manufacturers: ${state.potion.manufacturers}"),
                if (state.potion.inventors != null)
                  Text("Inventors: ${state.potion.inventors}"),
                if (state.potion.ingredients != null)
                  Text("Ingredients: ${state.potion.ingredients}"),
                if (state.potion.difficulty != null)
                  Text("Difficulty: ${state.potion.difficulty}"),
                if (state.potion.characteristics != null)
                  Text("Characteristics: ${state.potion.characteristics}"),
                TextButton(
                    onPressed: () {
                      context.router.push(const GifRoute());
                    },
                    child: const Text("WIKIPEDIA PAGE, YOUR HONOUR")),
              ],
            ),);
        });
  }

  @override
  Widget wrappedRoute(
      BuildContext context,
      ) {
    return BlocProvider<PotionBloc>(
      create: (context) => PotionBloc(
        PotionState(potion: passedPotion),
      )..fetchDetailResults(),
      child: this,
    );
  }
}