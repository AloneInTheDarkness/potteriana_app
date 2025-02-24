import 'package:flutter/widgets.dart';

class SmartPaginator extends SliverChildBuilderDelegate {
  SmartPaginator(
      super.builder, {
        required this.fetchMore,
        this.isFetching = false,
        this.loadPadding = 5,
        super.addAutomaticKeepAlives,
        super.addRepaintBoundaries,
        super.addSemanticIndexes,
        required super.childCount,
        super.findChildIndexCallback,
        super.semanticIndexCallback,
        super.semanticIndexOffset,
      });
  final Function fetchMore;
  final bool isFetching;
  final int loadPadding;
  @override
  void didFinishLayout(int firstIndex, int lastIndex) {
    if (lastIndex + loadPadding >= (childCount ?? double.infinity) &&
        !isFetching) {
      if ((childCount ?? -1) > 0) {
        fetchMore();
      }
    }
  }
}
