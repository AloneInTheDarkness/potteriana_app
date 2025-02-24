import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/book/book.dart';

part 'book_state.freezed.dart';
part 'book_state.g.dart';

@freezed
class BookState with _$BookState {
  const factory BookState({
    String? exceptionWarning,
    required Book book,
    @Default(false)
    bool isLoading
  }) = _BookState;



  factory BookState.fromJson(Map<String, dynamic> json) =>
      _$BookStateFromJson(json);
}