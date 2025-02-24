// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'potion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PotionState _$PotionStateFromJson(Map<String, dynamic> json) {
  return _PotionState.fromJson(json);
}

/// @nodoc
mixin _$PotionState {
  String? get exceptionWarning => throw _privateConstructorUsedError;
  Potion get potion => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Serializes this PotionState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PotionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PotionStateCopyWith<PotionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PotionStateCopyWith<$Res> {
  factory $PotionStateCopyWith(
          PotionState value, $Res Function(PotionState) then) =
      _$PotionStateCopyWithImpl<$Res, PotionState>;
  @useResult
  $Res call({String? exceptionWarning, Potion potion, bool isLoading});

  $PotionCopyWith<$Res> get potion;
}

/// @nodoc
class _$PotionStateCopyWithImpl<$Res, $Val extends PotionState>
    implements $PotionStateCopyWith<$Res> {
  _$PotionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PotionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? potion = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      potion: null == potion
          ? _value.potion
          : potion // ignore: cast_nullable_to_non_nullable
              as Potion,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PotionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PotionCopyWith<$Res> get potion {
    return $PotionCopyWith<$Res>(_value.potion, (value) {
      return _then(_value.copyWith(potion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PotionStateImplCopyWith<$Res>
    implements $PotionStateCopyWith<$Res> {
  factory _$$PotionStateImplCopyWith(
          _$PotionStateImpl value, $Res Function(_$PotionStateImpl) then) =
      __$$PotionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? exceptionWarning, Potion potion, bool isLoading});

  @override
  $PotionCopyWith<$Res> get potion;
}

/// @nodoc
class __$$PotionStateImplCopyWithImpl<$Res>
    extends _$PotionStateCopyWithImpl<$Res, _$PotionStateImpl>
    implements _$$PotionStateImplCopyWith<$Res> {
  __$$PotionStateImplCopyWithImpl(
      _$PotionStateImpl _value, $Res Function(_$PotionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PotionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? potion = null,
    Object? isLoading = null,
  }) {
    return _then(_$PotionStateImpl(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      potion: null == potion
          ? _value.potion
          : potion // ignore: cast_nullable_to_non_nullable
              as Potion,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PotionStateImpl implements _PotionState {
  const _$PotionStateImpl(
      {this.exceptionWarning, required this.potion, this.isLoading = false});

  factory _$PotionStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PotionStateImplFromJson(json);

  @override
  final String? exceptionWarning;
  @override
  final Potion potion;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PotionState(exceptionWarning: $exceptionWarning, potion: $potion, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PotionStateImpl &&
            (identical(other.exceptionWarning, exceptionWarning) ||
                other.exceptionWarning == exceptionWarning) &&
            (identical(other.potion, potion) || other.potion == potion) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, exceptionWarning, potion, isLoading);

  /// Create a copy of PotionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PotionStateImplCopyWith<_$PotionStateImpl> get copyWith =>
      __$$PotionStateImplCopyWithImpl<_$PotionStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PotionStateImplToJson(
      this,
    );
  }
}

abstract class _PotionState implements PotionState {
  const factory _PotionState(
      {final String? exceptionWarning,
      required final Potion potion,
      final bool isLoading}) = _$PotionStateImpl;

  factory _PotionState.fromJson(Map<String, dynamic> json) =
      _$PotionStateImpl.fromJson;

  @override
  String? get exceptionWarning;
  @override
  Potion get potion;
  @override
  bool get isLoading;

  /// Create a copy of PotionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PotionStateImplCopyWith<_$PotionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
