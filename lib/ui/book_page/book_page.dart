import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bloc_books/book_bloc/book_bloc.dart';
import '../../bloc/bloc_books/book_state.dart';
import '../../models/book/book.dart';
import '../../navigation/routing/auto_router_config.gr.dart';

@RoutePage()
class BookPage extends StatelessWidget implements AutoRouteWrapper {
  const BookPage({
    super.key,
    required this.passedBook,
  });

  final Book passedBook;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBloc, BookState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("${state.book.title}"),
        ),
        body: ListView(
          children: [
            if (state.book.cover != null)
              Image.network(
                state.book.cover.toString(),
              )
            else
              const Text("No Cover Provided"),
            Text("title: ${state.book.title}"),
            Text("author: ${state.book.author ?? "no author provided"}"),
            Text("summary: ${state.book.summary ?? "no summary provided"}"),
            Text(
                "dedication: ${state.book.dedication ?? "no dedication provided"}"),
            Text(
                "release date: ${state.book.releaseDate ?? "no release date provided"}"),
            Text("pages: ${state.book.pages ?? "no page count provided"}"),
            TextButton(onPressed: () {}, child: const Text("chapters")),
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
    return BlocProvider<BookBloc>(
      create: (context) => BookBloc(
        BookState(book: passedBook),
      )..fetchDetailResults(),
      child: this,
    );

    throw UnimplementedError();
  }
}
