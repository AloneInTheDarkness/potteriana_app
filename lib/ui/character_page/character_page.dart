import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';
import 'package:potteriana_ult/ui/shared/buttons/category_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../bloc/character_bloc/character_bloc.dart';
import '../../bloc/character_bloc/character_state.dart';
import '../../models/character/character.dart';

@RoutePage()
class CharacterPage extends StatelessWidget implements AutoRouteWrapper {
  const CharacterPage({
    super.key,
    required this.passedCharacter,
  });

  final Character passedCharacter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(builder: (context, state) {
      Future<void> showNoPageDialog() async {
        final result = await showDialog<bool>(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                backgroundColor: Colors.black26,
                insetPadding: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.91,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    // This is how you use Image.network in BoxDecoration
                    image: const DecorationImage(
                      image: AssetImage('assets/images/happyLittleTriangle.gif'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black26,
                        BlendMode.darken,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white10,
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Stack(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox.expand(
                        child: Container(
                          color: Colors.black26,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 50.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              'ссылка в данный момент недоступна',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 24,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                height: 1.20,
                              ),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Expanded(child: SizedBox()),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24.0),
                              child: CategoryButton(
                                onTapped: () {
                                  context.router.maybePop();
                                },
                                text: 'на страницу персонажа',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            });
      };

      return Scaffold(
        // backgroundColor: AppColors.gray400,
        appBar: AppBar(
          backgroundColor: AppColors.blue,
          title: Text("${state.character.name}"),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: ListView(
                children: [
                  if (state.character.image != null)
                    Image.network(
                      state.character.image.toString(),
                      fit: BoxFit.cover,
                    )
                  else
                    Image.asset('assets/images/question_mark.png'),
                  if (state.character.name != null)
                    _buildFancySummary(categoryTitle: "Name: ", content: state.character.name!),
                  if (state.character.animagus != null)
                    _buildFancySummary(categoryTitle: "Animagus: ", content: state.character.animagus!),
                  if (state.character.bloodStatus != null)
                    _buildFancySummary(
                        categoryTitle: "Blood Status: ", content: state.character.bloodStatus!),
                  if (state.character.boggart != null)
                    _buildFancySummary(categoryTitle: "Boggart: ", content: state.character.boggart!),
                  if (state.character.born != null)
                    _buildFancySummary(categoryTitle: "Born: ", content: state.character.born!),
                  if (state.character.died != null)
                    _buildFancySummary(categoryTitle: "Died: ", content: state.character.died!),
                  if (state.character.eyeColor != null)
                    _buildFancySummary(categoryTitle: "Eye Color: ", content: state.character.eyeColor!),
                  if (state.character.familyMembers?.isNotEmpty ?? false)
                    _buildFancySummary(
                      categoryTitle: "Family Members: ",
                      content: state.character.familyMembers.toString(),
                    ),
                  if (state.character.gender != null)
                    _buildFancySummary(categoryTitle: "Gender: ", content: state.character.gender!),
                  if (state.character.hairColor != null)
                    _buildFancySummary(
                        categoryTitle: "Hair Color: ", content: state.character.hairColor!),
                  if (state.character.height != null)
                    _buildFancySummary(categoryTitle: "Height: ", content: state.character.height!),
                  if (state.character.house != null)
                    _buildFancySummary(categoryTitle: "House: ", content: state.character.house!),
                  if (state.character.jobs?.isNotEmpty ?? false)
                    _buildFancySummary(
                      categoryTitle: "Jobs: ",
                      content: state.character.jobs.toString(),
                    ),
                  if (state.character.maritalStatus != null)
                    _buildFancySummary(
                        categoryTitle: "Marital Status: ", content: state.character.maritalStatus!),
                  if (state.character.nationality != null)
                    _buildFancySummary(
                        categoryTitle: "Nationality: ", content: state.character.nationality!),
                  if (state.character.patronus != null)
                    _buildFancySummary(categoryTitle: "Patronus: ", content: state.character.patronus!),
                  if (state.character.romances?.isNotEmpty ?? false)
                    _buildFancySummary(
                      categoryTitle: "Romances: ",
                      content: state.character.romances.toString(),
                    ),
                  if (state.character.skinColor != null)
                    _buildFancySummary(
                        categoryTitle: "Skin Color: ", content: state.character.skinColor!),
                  if (state.character.species != null)
                    _buildFancySummary(categoryTitle: "Species: ", content: state.character.species!),
                  if (state.character.weight != null)
                    _buildFancySummary(categoryTitle: "Weight: ", content: state.character.weight!),
                  if (state.character.titles?.isNotEmpty ?? false)
                    _buildFancySummary(
                      categoryTitle: "Titles: ",
                      content: state.character.titles.toString(),
                    ),
                  if (state.character.wands?.isNotEmpty ?? false)
                    _buildFancySummary(
                      categoryTitle: "Wands: ",
                      content: state.character.wands.toString(),
                    ),
                ],
              ),
            ),
            Column(
              children: [
                Expanded(child: SizedBox()),
                CategoryButton(
                  buttonColor: AppColors.green,
                  onTapped: () async {
                    if (state.character.wiki != null) {
                      _launchUrl(
                        urlPath: state.character.wiki ?? '',
                      );
                    } else {
                      showNoPageDialog();
                    }
                  },
                  text: "wikipedia page",
                ),
              ],
            ),
          ],
        ),
      );
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

  Widget _buildFancySummary({required String categoryTitle, required String content}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.gray300, AppColors.cyan],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              style: const TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                height: 1.6,
                color: AppColors.gray900,
                fontWeight: FontWeight.w500,
              ),
              text: categoryTitle,
            ),
            TextSpan(
              style: const TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18,
                height: 1.6,
                color: AppColors.gray900,
                fontWeight: FontWeight.w400,
              ),
              text: content.isNotEmpty ? ' $content' : '',
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl({required String urlPath}) async {
    final Uri url = Uri.parse(urlPath);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
