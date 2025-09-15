import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';
import 'package:potteriana_ult/ui/shared/buttons/category_button.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:potteriana_ult/bloc/movie_bloc/movie_bloc.dart';
import 'package:potteriana_ult/bloc/movie_bloc/movie_state.dart';
import 'package:potteriana_ult/models/movie/movie.dart';

enum ContentType { youtube, wikipedia }

@RoutePage()
class MoviePage extends StatelessWidget implements AutoRouteWrapper {
  const MoviePage({
    super.key,
    required this.passedMovie,
  });

  final Movie passedMovie;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(builder: (context, state) {

      if (state.isLoading) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 71.5, left: 12, right: 12,),
              child: ListView(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.91,
                    height: MediaQuery.of(context).size.height * 0.70,
                  ),
                ],
              ),
            ),
          ],
        );
      }

      Future<void> showNoContentDialog({required ContentType contentType}) async {
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
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              contentType == ContentType.youtube
                                  ? 'ютуб трейлер в данный момент не доступен'
                                  : 'Вики-страница в данный момент не доступна',
                              style: const TextStyle(
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
                                text: 'на страницу фильма',
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

      return Scaffold(
        // backgroundColor: AppColors.gray400,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.blue,
          title: Text("${state.movie.title}"),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 124.0, left: 12, right: 12),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.91,
                      height: MediaQuery.of(context).size.height * 0.65,
                      child: state.movie.poster != null ? Image.network(
                        state.movie.poster.toString(),
                        fit: BoxFit.cover,
                      ) : Image.asset('assets/images/question_mark.png'),
                    ),
                  ),
                  if (state.movie.title != null)
                    _buildFancySummary(categoryTitle: "title: ", content: state.movie.title!),
                  if (state.movie.producers != null && state.movie.producers!.isNotEmpty)
                    _buildFancySummary(
                        categoryTitle: "producers: ",
                        content: '${state.movie.producers ?? "no producers provided"}'),
                  if (state.movie.summary != null)
                    _buildFancySummary(categoryTitle: "summary: ", content: state.movie.summary!),
                  if (state.movie.boxOffice != null)
                    _buildFancySummary(categoryTitle: "box office: ", content: state.movie.boxOffice!),
                  if (state.movie.releaseDate != null)
                    _buildFancySummary(
                        categoryTitle: "release date: ", content: state.movie.releaseDate!),
                  if (state.movie.budget != null)
                    _buildFancySummary(categoryTitle: "budget: ", content: state.movie.budget!),
                  if (state.movie.distributors != null && state.movie.distributors!.isNotEmpty)
                    _buildFancySummary(
                        categoryTitle: "distributors: ",
                        content: '${state.movie.distributors ?? "no distributors provided"}'),
                  if (state.movie.rating != null)
                    _buildFancySummary(categoryTitle: "rating: ", content: state.movie.rating!),
                  if (state.movie.runningTime != null)
                    _buildFancySummary(categoryTitle: "runningTime: ", content: state.movie.runningTime!),
                  if (state.movie.cinematographers != null && state.movie.cinematographers!.isNotEmpty)
                    _buildFancySummary(
                        categoryTitle: "cinematographers: ",
                        content: '${state.movie.cinematographers ?? "no cinematographers provided"}'),
                  if (state.movie.directors != null && state.movie.directors!.isNotEmpty)
                    _buildFancySummary(
                        categoryTitle: "directors: ",
                        content: '${state.movie.directors ?? "no directors provided"}'),
                  if (state.movie.editors != null && state.movie.editors!.isNotEmpty)
                    _buildFancySummary(
                        categoryTitle: "editors: ",
                        content: '${state.movie.editors ?? "no editors provided"}'),
                  if (state.movie.musicComposers != null && state.movie.musicComposers!.isNotEmpty)
                    _buildFancySummary(
                        categoryTitle: "music composers: ",
                        content: '${state.movie.musicComposers ?? "no music composers provided"}'),
                  if (state.movie.screenwriters != null && state.movie.screenwriters!.isNotEmpty)
                    _buildFancySummary(
                        categoryTitle: "screenwriters: ",
                        content: '${state.movie.screenwriters ?? "no screenwriters provided"}'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0, left: 12, right: 12),
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  CategoryButton(
                    heightMargin: 0,
                    buttonColor: AppColors.green,
                    onTapped: () async {
                      if (state.movie.trailer != null) {
                        _launchUrl(
                          urlPath: state.movie.trailer!,
                        );
                      } else {
                        showNoContentDialog(contentType: ContentType.youtube);
                      }
                    },
                    text: "watch trailer via youtube",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CategoryButton(
                      heightMargin: 0,
                      buttonColor: AppColors.green,
                      onTapped: () async {
                        if (state.movie.wiki != null) {
                          _launchUrl(
                            urlPath: state.movie.wiki ?? '',
                          );
                        } else {
                          showNoContentDialog(contentType: ContentType.wikipedia);
                        }
                      },
                      text: "wikipedia page",
                    ),
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
    return BlocProvider<MovieBloc>(
      create: (context) => MovieBloc(
        MovieState(movie: passedMovie),
      )..fetchDetailResults(),
      child: this,
    );

    throw UnimplementedError();
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
