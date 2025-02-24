// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edges.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Edges _$EdgesFromJson(Map<String, dynamic> json) {
  return _Edges.fromJson(json);
}

/// @nodoc
mixin _$Edges {
  String? get cursor => throw _privateConstructorUsedError;

  /// Serializes this Edges to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Edges
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdgesCopyWith<Edges> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgesCopyWith<$Res> {
  factory $EdgesCopyWith(Edges value, $Res Function(Edges) then) =
      _$EdgesCopyWithImpl<$Res, Edges>;
  @useResult
  $Res call({String? cursor});
}

/// @nodoc
class _$EdgesCopyWithImpl<$Res, $Val extends Edges>
    implements $EdgesCopyWith<$Res> {
  _$EdgesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Edges
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
  }) {
    return _then(_value.copyWith(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EdgesImplCopyWith<$Res> implements $EdgesCopyWith<$Res> {
  factory _$$EdgesImplCopyWith(
          _$EdgesImpl value, $Res Function(_$EdgesImpl) then) =
      __$$EdgesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cursor});
}

/// @nodoc
class __$$EdgesImplCopyWithImpl<$Res>
    extends _$EdgesCopyWithImpl<$Res, _$EdgesImpl>
    implements _$$EdgesImplCopyWith<$Res> {
  __$$EdgesImplCopyWithImpl(
      _$EdgesImpl _value, $Res Function(_$EdgesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Edges
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
  }) {
    return _then(_$EdgesImpl(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdgesImpl with DiagnosticableTreeMixin implements _Edges {
  const _$EdgesImpl({this.cursor});

  factory _$EdgesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdgesImplFromJson(json);

  @override
  final String? cursor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Edges(cursor: $cursor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Edges'))
      ..add(DiagnosticsProperty('cursor', cursor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdgesImpl &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cursor);

  /// Create a copy of Edges
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdgesImplCopyWith<_$EdgesImpl> get copyWith =>
      __$$EdgesImplCopyWithImpl<_$EdgesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdgesImplToJson(
      this,
    );
  }
}

abstract class _Edges implements Edges {
  const factory _Edges({final String? cursor}) = _$EdgesImpl;

  factory _Edges.fromJson(Map<String, dynamic> json) = _$EdgesImpl.fromJson;

  @override
  String? get cursor;

  /// Create a copy of Edges
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdgesImplCopyWith<_$EdgesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
