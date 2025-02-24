import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/book/book.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_state.freezed.dart';
part 'books_state.g.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState({
    String? exceptionWarning,
    @Default([])
    List<Book> bookerCatch,
    @Default(false)
    bool isLoading
  }) = _BooksState;



  factory BooksState.fromJson(Map<String, dynamic> json) =>
      _$BooksStateFromJson(json);
}