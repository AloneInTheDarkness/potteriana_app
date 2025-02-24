import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'edges.freezed.dart';
part 'edges.g.dart';

@freezed
class Edges with _$Edges {
  const factory Edges({
    String? cursor,
  }) = _Edges;

  factory Edges.fromJson(Map<String, Object?> json) => _$EdgesFromJson(json);
}
