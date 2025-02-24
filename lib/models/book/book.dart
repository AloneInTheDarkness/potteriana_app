import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:potteriana_ult/repository/api/get_book/get_book.graphql.dart';
import 'package:potteriana_ult/repository/api/get_books/get_bboks.graphql.dart';
import 'chapters.dart';
part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    String? author,
    String? slug,
    String? title,
    String? summary,
    String? cover,
    String? dedication,
    int? pages,
    String? releaseDate,
    String? wiki,
    Chapters? chapters,
  }) = _Book;

  factory Book.fromJson(Map<String, Object?> json) => _$BookFromJson(json);
  factory Book.fromDTOGetBooks(Query_Bboks_books_nodes dTO) =>
      Book(slug: dTO.slug, title: dTO.title);
  factory Book.fromDTOGetBook(Query_Book_book dTO) => Book(
        slug: dTO.slug,
        title: dTO.title,
        author: dTO.author,
        summary: dTO.summary,
        cover: dTO.cover,
        dedication: dTO.dedication,
        pages: dTO.pages,
        releaseDate: dTO.releaseDate,
      );
}
