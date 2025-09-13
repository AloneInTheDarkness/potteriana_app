import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';
import 'package:potteriana_ult/ui/shared/buttons/category_button.dart';

import '../../bloc/movies_bloc/movies_bloc.dart';
import '../../bloc/movies_bloc/movies_state.dart';
import '../../navigation/routing/auto_router_config.gr.dart';

@RoutePage()
class MoviesPage extends StatelessWidget implements AutoRouteWrapper {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppColors.gray400,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.blue,
          title: const Text("Movies List"),
        ),
        body: BlocBuilder<MoviesBloc, MoviesState>(builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (state.exceptionWarning != null) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                        onPressed: () async {
                          await BlocProvider.of<MoviesBloc>(context)
                              .fetchResults();
                        },
                        child: Text("REFRESH")),
                    Text(state.exceptionWarning!),
                  ],
                ),
              );
            }
            return RefreshIndicator(
              onRefresh: BlocProvider.of<MoviesBloc>(context).fetchResults,
              child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: state.moviesList.length,
                  itemBuilder: (context, index) {
                    if (state.moviesList[index].title != null) {
                      return ListTile(
                        title: CategoryButton(
                          onTapped: () {
                            if (state.moviesList[index].slug != null) {
                              context.router.push(MovieRoute(
                                passedMovie: state.moviesList[index],
                              ));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("No Movie"),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
                          text: state.moviesList[index].title ?? '',
                        ),
                      );
                    } else {
                      return SizedBox();
                    }
                  }),
            );
          }
        }));
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MoviesBloc>(
      create: (context) => MoviesBloc(const MoviesState())..fetchResults(),
      child: this,
    );

    throw UnimplementedError();
  }
}
