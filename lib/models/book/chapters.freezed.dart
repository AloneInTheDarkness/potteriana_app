// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Chapters _$ChaptersFromJson(Map<String, dynamic> json) {
  return _Chapters.fromJson(json);
}

/// @nodoc
mixin _$Chapters {
  List<Edges>? get edges => throw _privateConstructorUsedError;
  List<Nodes>? get nodes => throw _privateConstructorUsedError;
  PageInfo? get pageInfo => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;

  /// Serializes this Chapters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chapters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChaptersCopyWith<Chapters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChaptersCopyWith<$Res> {
  factory $ChaptersCopyWith(Chapters value, $Res Function(Chapters) then) =
      _$ChaptersCopyWithImpl<$Res, Chapters>;
  @useResult
  $Res call(
      {List<Edges>? edges,
      List<Nodes>? nodes,
      PageInfo? pageInfo,
      int? totalCount});

  $PageInfoCopyWith<$Res>? get pageInfo;
}

/// @nodoc
class _$ChaptersCopyWithImpl<$Res, $Val extends Chapters>
    implements $ChaptersCopyWith<$Res> {
  _$ChaptersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chapters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
    Object? nodes = freezed,
    Object? pageInfo = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      edges: freezed == edges
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Edges>?,
      nodes: freezed == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<Nodes>?,
      pageInfo: freezed == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Chapters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res>? get pageInfo {
    if (_value.pageInfo == null) {
      return null;
    }

    return $PageInfoCopyWith<$Res>(_value.pageInfo!, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChaptersImplCopyWith<$Res>
    implements $ChaptersCopyWith<$Res> {
  factory _$$ChaptersImplCopyWith(
          _$ChaptersImpl value, $Res Function(_$ChaptersImpl) then) =
      __$$ChaptersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Edges>? edges,
      List<Nodes>? nodes,
      PageInfo? pageInfo,
      int? totalCount});

  @override
  $PageInfoCopyWith<$Res>? get pageInfo;
}

/// @nodoc
class __$$ChaptersImplCopyWithImpl<$Res>
    extends _$ChaptersCopyWithImpl<$Res, _$ChaptersImpl>
    implements _$$ChaptersImplCopyWith<$Res> {
  __$$ChaptersImplCopyWithImpl(
      _$ChaptersImpl _value, $Res Function(_$ChaptersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chapters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
    Object? nodes = freezed,
    Object? pageInfo = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$ChaptersImpl(
      edges: freezed == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Edges>?,
      nodes: freezed == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<Nodes>?,
      pageInfo: freezed == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChaptersImpl with DiagnosticableTreeMixin implements _Chapters {
  const _$ChaptersImpl(
      {final List<Edges>? edges,
      final List<Nodes>? nodes,
      this.pageInfo,
      this.totalCount})
      : _edges = edges,
        _nodes = nodes;

  factory _$ChaptersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChaptersImplFromJson(json);

  final List<Edges>? _edges;
  @override
  List<Edges>? get edges {
    final value = _edges;
    if (value == null) return null;
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Nodes>? _nodes;
  @override
  List<Nodes>? get nodes {
    final value = _nodes;
    if (value == null) return null;
    if (_nodes is EqualUnmodifiableListView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PageInfo? pageInfo;
  @override
  final int? totalCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Chapters(edges: $edges, nodes: $nodes, pageInfo: $pageInfo, totalCount: $totalCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Chapters'))
      ..add(DiagnosticsProperty('edges', edges))
      ..add(DiagnosticsProperty('nodes', nodes))
      ..add(DiagnosticsProperty('pageInfo', pageInfo))
      ..add(DiagnosticsProperty('totalCount', totalCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChaptersImpl &&
            const DeepCollectionEquality().equals(other._edges, _edges) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_edges),
      const DeepCollectionEquality().hash(_nodes),
      pageInfo,
      totalCount);

  /// Create a copy of Chapters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChaptersImplCopyWith<_$ChaptersImpl> get copyWith =>
      __$$ChaptersImplCopyWithImpl<_$ChaptersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChaptersImplToJson(
      this,
    );
  }
}

abstract class _Chapters implements Chapters {
  const factory _Chapters(
      {final List<Edges>? edges,
      final List<Nodes>? nodes,
      final PageInfo? pageInfo,
      final int? totalCount}) = _$ChaptersImpl;

  factory _Chapters.fromJson(Map<String, dynamic> json) =
      _$ChaptersImpl.fromJson;

  @override
  List<Edges>? get edges;
  @override
  List<Nodes>? get nodes;
  @override
  PageInfo? get pageInfo;
  @override
  int? get totalCount;

  /// Create a copy of Chapters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChaptersImplCopyWith<_$ChaptersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
