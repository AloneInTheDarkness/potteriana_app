import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/bloc/bloc_books/books_bloc/books_bloc.dart';
import 'package:potteriana_ult/bloc/bloc_books/books_state.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';
import 'package:potteriana_ult/ui/shared/buttons/category_button.dart';

import '../../navigation/routing/auto_router_config.gr.dart';

@RoutePage()
class CategoryPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: AppColors.blue,
          centerTitle: true,
          title: const Text("Books list",),
        ),
        body: BlocBuilder<BooksBloc, BooksState>(builder: (context, state) {
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
                          await BlocProvider.of<BooksBloc>(context)
                              .fetchResults();
                        },
                        child: Text("REFRESH")),
                    Text(state.exceptionWarning!),
                  ],
                ),
              );
            }
            return RefreshIndicator(
              onRefresh: BlocProvider.of<BooksBloc>(context).fetchResults,
              child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: state.bookerCatch.length,
                  itemBuilder: (context, index) {
                    if (state.bookerCatch[index].title != null) {
                      return ListTile(
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: CategoryButton(
                            onTapped: () {
                              if (state.bookerCatch[index].slug != null) {
                                context.router.push(BookRoute(
                                  passedBook: state.bookerCatch[index],
                                ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("No Book"),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            },
                            text: state.bookerCatch[index].title ?? 'Book not found',
                          ),
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
    return BlocProvider<BooksBloc>(
      create: (context) => BooksBloc(const BooksState())..fetchResults(),
      child: this,
    );

    throw UnimplementedError();
  }
}
