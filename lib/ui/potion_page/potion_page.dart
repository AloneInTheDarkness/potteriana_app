import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/bloc/potion_bloc/potion_bloc.dart';
import 'package:potteriana_ult/bloc/potion_bloc/potion_state.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';
import 'package:potteriana_ult/ui/shared/buttons/category_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/potion/potion.dart';
import '../../navigation/routing/auto_router_config.gr.dart';

@RoutePage()
class PotionPage extends StatelessWidget implements AutoRouteWrapper {
  const PotionPage({
    super.key,
    required this.passedPotion,
    this.passedPotionImage,
  });

  final Potion passedPotion;

  final CachedNetworkImage? passedPotionImage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PotionBloc, PotionState>(builder: (context, state) {
      if (state.isLoading) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 71.5,
                left: 12,
                right: 12,
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.91,
                      height: MediaQuery.of(context).size.height * 0.50,
                      child: passedPotionImage ?? Image.asset('assets/images/question_mark.png'),
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      }

      Future<void> showNoPotionDialog() async {
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
                                text: 'на страницу книги',
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
      }

      ;

      return Scaffold(
        // backgroundColor: AppColors.gray400,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.blue,
          title: Text("${state.potion.name}"),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 71.5, left: 12, right: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.91,
                      height: MediaQuery.of(context).size.height * 0.50,
                      child: passedPotionImage ?? Image.asset('assets/images/question_mark.png'),
                    ),
                  ),
                  if (state.potion.name != null)
                    _buildFancySummary(categoryTitle: "Name: ", content: state.potion.name!),
                  if (state.potion.effect != null)
                    _buildFancySummary(categoryTitle: "Effect: ", content: state.potion.effect!),
                  if (state.potion.sideEffects != null)
                    _buildFancySummary(
                        categoryTitle: "Side effects: ", content: state.potion.sideEffects!),
                  if (state.potion.time != null)
                    _buildFancySummary(categoryTitle: "Time: ", content: state.potion.time!),
                  if (state.potion.manufacturers != null)
                    _buildFancySummary(
                        categoryTitle: "Manufacturers: ", content: state.potion.manufacturers!),
                  if (state.potion.inventors != null)
                    _buildFancySummary(
                        categoryTitle: "Inventors: ", content: state.potion.inventors!),
                  if (state.potion.ingredients != null)
                    _buildFancySummary(
                        categoryTitle: "Ingredients: ", content: state.potion.ingredients!),
                  if (state.potion.difficulty != null)
                    _buildFancySummary(
                        categoryTitle: "Difficulty: ", content: state.potion.difficulty!),
                  if (state.potion.characteristics != null)
                    _buildFancySummary(
                        categoryTitle: "Characteristics: ", content: state.potion.characteristics!),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0, left: 12, right: 12),
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  CategoryButton(
                    buttonColor: AppColors.green,
                    onTapped: () async {
                      if (state.potion.wiki != null) {
                        _launchUrl(
                          urlPath: state.potion.wiki ?? '',
                        );
                      } else {
                        showNoPotionDialog();
                      }
                    },
                    text: "wikipedia page",
                  ),
                ],
              ),
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
    return BlocProvider<PotionBloc>(
      create: (context) => PotionBloc(
        PotionState(potion: passedPotion),
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
