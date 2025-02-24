import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'nodes.freezed.dart';
part 'nodes.g.dart';

@freezed
class Nodes with _$Nodes {
  const factory Nodes({
    String? title,
  }) = _Nodes;

  factory Nodes.fromJson(Map<String, Object?> json) => _$NodesFromJson(json);
}
