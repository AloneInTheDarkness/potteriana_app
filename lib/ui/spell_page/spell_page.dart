import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/spell_bloc/spell_bloc.dart';
import '../../bloc/spell_bloc/spell_state.dart';
import '../../models/spell/spell.dart';
import '../../navigation/routing/auto_router_config.gr.dart';

@RoutePage()
class SpellPage extends StatelessWidget implements AutoRouteWrapper {
  const SpellPage({
    super.key,
    required this.passedSpell,
  });

  final Spell passedSpell;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpellBloc, SpellState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text("${state.spell.name}"),
            ),
            body: ListView(

              children: [
                if (state.spell.image != null)
                  Image.network(state.spell.image.toString(),)
                else
                  Image.asset(
                      'assets/images/question_mark.png'),
                if (state.spell.name != null)
                  Text("Name: ${state.spell.name}"),
                if (state.spell.effect != null)
                  Text("Effect: ${state.spell.effect}"),
                if (state.spell.category != null)
                  Text("Category: ${state.spell.category}"),
                if (state.spell.creator != null)
                  Text("Creator: ${state.spell.creator}"),
                if (state.spell.hand != null)
                  Text("Hand: ${state.spell.hand}"),
                if (state.spell.incantation != null)
                  Text("Incantation: ${state.spell.incantation}"),
                if (state.spell.light != null)
                  Text("Light: ${state.spell.light}"),
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
    return BlocProvider<SpellBloc>(
      create: (context) => SpellBloc(
        SpellState(spell: passedSpell),
      )..fetchDetailResults(),
      child: this,
    );
  }
}