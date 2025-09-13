import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';
import 'package:potteriana_ult/ui/shared/buttons/category_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
                                    text: 'на страницу заклинания',
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
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: AppColors.blue,
              title: Text("${state.spell.name}"),
            ),
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 48.0),
                  child: ListView(
                    children: [
                      if (state.spell.image != null)
                        Image.network(state.spell.image.toString(),)
                      else
                        Image.asset(
                            'assets/images/question_mark.png'),
                      if (state.spell.name != null)
                        _buildFancySummary(categoryTitle: "Name: ", content: state.spell.name!),
                      if (state.spell.effect != null)
                        _buildFancySummary(categoryTitle: "Effect: ", content: state.spell.effect!),
                      if (state.spell.category != null)
                        _buildFancySummary(categoryTitle: "Category: ", content: state.spell.category!),
                      if (state.spell.creator != null)
                        _buildFancySummary(categoryTitle: "Creator: ", content: state.spell.creator!),
                      if (state.spell.hand != null)
                        _buildFancySummary(categoryTitle: "Hand: ", content: state.spell.hand!),
                      if (state.spell.incantation != null)
                        _buildFancySummary(categoryTitle: "Incantation: ", content: state.spell.incantation!),
                      if (state.spell.light != null)
                        _buildFancySummary(categoryTitle: "Light: ", content: state.spell.light!),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryButton(
                        buttonColor: AppColors.green,
                        onTapped: () async {
                          if (state.spell.wiki != null) {
                            _launchUrl(
                              urlPath: state.spell.wiki ?? '',
                            );
                          } else {
                            showNoPageDialog();
                          }
                        },
                        text: "wikipedia page",
                      ),
                    ),
                  ],
                ),
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