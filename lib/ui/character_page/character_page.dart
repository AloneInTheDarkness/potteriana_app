import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/character_bloc/character_bloc.dart';
import '../../bloc/character_bloc/character_state.dart';
import '../../models/character/character.dart';
import '../../navigation/routing/auto_router_config.gr.dart';

@RoutePage()
class CharacterPage extends StatelessWidget implements AutoRouteWrapper {
  const CharacterPage({
    super.key,
    required this.passedCharacter,
  });

  final Character passedCharacter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("${state.character.name}"),
          ),
        body: ListView(

          children: [
            if (state.character.image != null)
              Image.network(state.character.image.toString(),)
            else
              Image.asset(
                  'assets/images/question_mark.png'),
            if (state.character.name != null)
              Text("Name: ${state.character.name}"),
            if (state.character.animagus != null)
              Text("${state.character.animagus}"),
            if (state.character.bloodStatus != null)
              Text("Blood Status: ${state.character.bloodStatus}"),
            if (state.character.boggart != null)
              Text("${state.character.boggart}"),
            if (state.character.born != null)
              Text("Born: ${state.character.born}"),
            if (state.character.died != null)
              Text("Died: ${state.character.died}"),
            if (state.character.eyeColor != null)
              Text("Eye Color: ${state.character.eyeColor}"),
            if (state.character.familyMembers?.isNotEmpty ?? false)
              Text("Family Members: ${state.character.familyMembers.toString()}"),
            if (state.character.gender != null)
              Text("Gender: ${state.character.gender}"),
            if (state.character.hairColor != null)
              Text("Hair Color: ${state.character.hairColor}"),
            if (state.character.height != null)
              Text("Height: ${state.character.height}"),
            if (state.character.house != null)
              Text("House: ${state.character.house}"),
            if (state.character.height != null)
              Text("Height: ${state.character.height}"),
            if (state.character.jobs?.isNotEmpty ?? false)
              Text("Jobs: ${state.character.jobs.toString()}"),
            if (state.character.maritalStatus != null)
              Text("Marital Status: ${state.character.maritalStatus}"),
            if (state.character.nationality != null)
              Text("Nationality: ${state.character.nationality}"),
            if (state.character.patronus != null)
              Text("Patronus: ${state.character.patronus}"),
            if (state.character.romances?.isNotEmpty ?? false)
              Text("Romances: ${state.character.romances.toString()}"),
            if (state.character.skinColor != null)
              Text("Skin Color: ${state.character.skinColor}"),
            if (state.character.species != null)
              Text("Species: ${state.character.species}"),
            if (state.character.weight != null)
              Text("Weight: ${state.character.weight}"),
            if (state.character.titles?.isNotEmpty ?? false)
              Text("Titles: ${state.character.titles.toString()}"),
            if (state.character.wands?.isNotEmpty ?? false)
                Text("Wands: ${state.character.wands.toString()}"),
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
    return BlocProvider<CharacterBloc>(
      create: (context) => CharacterBloc(
        CharacterState(character: passedCharacter),
      )..fetchDetailResults(),
      child: this,
    );
  }
}
