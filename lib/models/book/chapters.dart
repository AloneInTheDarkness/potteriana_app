import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'edges.dart';
import 'nodes.dart';
import 'page_info.dart';
part 'chapters.freezed.dart';
part 'chapters.g.dart';

@freezed
class Chapters with _$Chapters {
  const factory Chapters({
    List<Edges>? edges,
    List<Nodes>? nodes,
    PageInfo? pageInfo,
    int? totalCount,
  }) = _Chapters;

  factory Chapters.fromJson(Map<String, Object?> json) =>
      _$ChaptersFromJson(json);
}
