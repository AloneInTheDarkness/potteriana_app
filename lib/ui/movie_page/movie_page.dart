import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../bloc/movie_bloc/movie_bloc.dart';
import '../../bloc/movie_bloc/movie_state.dart';
import '../../models/movie/movie.dart';
import '../../navigation/routing/auto_router_config.gr.dart';

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
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("${state.movie.title}"),
        ),
        body: ListView(
          children: [
            if (state.movie.poster != null)
              Image.network(
                state.movie.poster.toString(),
              )
            else
              const Text("No Cover Provided"),
            Text("title: ${state.movie.title ?? "no title provided"}"),
            Text("producers: ${state.movie.producers ?? "no producers provided"}"),
            Text("summary: ${state.movie.summary ?? "no summary provided"}"),
            Text(
                "box office: ${state.movie.boxOffice ?? "no boxOffice provided"}"),
            Text(
                "release date: ${state.movie.releaseDate ?? "no release date provided"}"),
            Text("budget: ${state.movie.budget ?? "no budget provided"}"),
            Text("distributors: ${state.movie.distributors ?? "no distributors provided"}"),
            Text("rating: ${state.movie.rating ?? "no rating provided"}"),
            Text("runningTime: ${state.movie.runningTime ?? "no runningTime provided"}"),
            Text("cinematographers: ${state.movie.cinematographers ?? "no cinematographers provided"}"),
            Text("directors: ${state.movie.directors ?? "no directors provided"}"),
            Text("editors: ${state.movie.editors ?? "no editors provided"}"),
            Text("music composers: ${state.movie.musicComposers ?? "no music composers provided"}"),
            Text("screenwriters: ${state.movie.screenwriters ?? "no screenwriters provided"}"),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(state.movie.trailer ?? 'https://media1.tenor.com/m/kovpVR3sL04AAAAd/dancing-triangle-triangle.gif'));
                },
                child: const Text("WATCH TRAILER VIA YOUTUBE")),
            TextButton(
                onPressed: () {
                  context.router.push(const GifRoute());
                },
                child: const Text("WIKIPEDIA PAGE, YOUR HONOUR")),
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
}
