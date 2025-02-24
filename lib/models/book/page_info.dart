import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'page_info.freezed.dart';
part 'page_info.g.dart';

@freezed
class PageInfo with _$PageInfo {
  const factory PageInfo({
    bool? hasNextPage,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, Object?> json) =>
      _$PageInfoFromJson(json);
}
