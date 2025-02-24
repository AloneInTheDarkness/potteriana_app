// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nodes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Nodes _$NodesFromJson(Map<String, dynamic> json) {
  return _Nodes.fromJson(json);
}

/// @nodoc
mixin _$Nodes {
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this Nodes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Nodes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NodesCopyWith<Nodes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodesCopyWith<$Res> {
  factory $NodesCopyWith(Nodes value, $Res Function(Nodes) then) =
      _$NodesCopyWithImpl<$Res, Nodes>;
  @useResult
  $Res call({String? title});
}

/// @nodoc
class _$NodesCopyWithImpl<$Res, $Val extends Nodes>
    implements $NodesCopyWith<$Res> {
  _$NodesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Nodes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NodesImplCopyWith<$Res> implements $NodesCopyWith<$Res> {
  factory _$$NodesImplCopyWith(
          _$NodesImpl value, $Res Function(_$NodesImpl) then) =
      __$$NodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title});
}

/// @nodoc
class __$$NodesImplCopyWithImpl<$Res>
    extends _$NodesCopyWithImpl<$Res, _$NodesImpl>
    implements _$$NodesImplCopyWith<$Res> {
  __$$NodesImplCopyWithImpl(
      _$NodesImpl _value, $Res Function(_$NodesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Nodes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$NodesImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodesImpl with DiagnosticableTreeMixin implements _Nodes {
  const _$NodesImpl({this.title});

  factory _$NodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodesImplFromJson(json);

  @override
  final String? title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Nodes(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Nodes'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodesImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of Nodes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodesImplCopyWith<_$NodesImpl> get copyWith =>
      __$$NodesImplCopyWithImpl<_$NodesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodesImplToJson(
      this,
    );
  }
}

abstract class _Nodes implements Nodes {
  const factory _Nodes({final String? title}) = _$NodesImpl;

  factory _Nodes.fromJson(Map<String, dynamic> json) = _$NodesImpl.fromJson;

  @override
  String? get title;

  /// Create a copy of Nodes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodesImplCopyWith<_$NodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
