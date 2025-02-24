// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'potions_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PotionsListState _$PotionsListStateFromJson(Map<String, dynamic> json) {
  return _PotionsListState.fromJson(json);
}

/// @nodoc
mixin _$PotionsListState {
  String? get exceptionWarning => throw _privateConstructorUsedError;
  List<Potion> get potionsList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this PotionsListState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PotionsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PotionsListStateCopyWith<PotionsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PotionsListStateCopyWith<$Res> {
  factory $PotionsListStateCopyWith(
          PotionsListState value, $Res Function(PotionsListState) then) =
      _$PotionsListStateCopyWithImpl<$Res, PotionsListState>;
  @useResult
  $Res call(
      {String? exceptionWarning,
      List<Potion> potionsList,
      bool isLoading,
      String? cursor,
      String? name});
}

/// @nodoc
class _$PotionsListStateCopyWithImpl<$Res, $Val extends PotionsListState>
    implements $PotionsListStateCopyWith<$Res> {
  _$PotionsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PotionsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? potionsList = null,
    Object? isLoading = null,
    Object? cursor = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      potionsList: null == potionsList
          ? _value.potionsList
          : potionsList // ignore: cast_nullable_to_non_nullable
              as List<Potion>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PotionsListStateImplCopyWith<$Res>
    implements $PotionsListStateCopyWith<$Res> {
  factory _$$PotionsListStateImplCopyWith(_$PotionsListStateImpl value,
          $Res Function(_$PotionsListStateImpl) then) =
      __$$PotionsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? exceptionWarning,
      List<Potion> potionsList,
      bool isLoading,
      String? cursor,
      String? name});
}

/// @nodoc
class __$$PotionsListStateImplCopyWithImpl<$Res>
    extends _$PotionsListStateCopyWithImpl<$Res, _$PotionsListStateImpl>
    implements _$$PotionsListStateImplCopyWith<$Res> {
  __$$PotionsListStateImplCopyWithImpl(_$PotionsListStateImpl _value,
      $Res Function(_$PotionsListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PotionsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? potionsList = null,
    Object? isLoading = null,
    Object? cursor = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PotionsListStateImpl(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      potionsList: null == potionsList
          ? _value._potionsList
          : potionsList // ignore: cast_nullable_to_non_nullable
              as List<Potion>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PotionsListStateImpl implements _PotionsListState {
  const _$PotionsListStateImpl(
      {this.exceptionWarning,
      final List<Potion> potionsList = const [],
      this.isLoading = false,
      this.cursor,
      this.name})
      : _potionsList = potionsList;

  factory _$PotionsListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PotionsListStateImplFromJson(json);

  @override
  final String? exceptionWarning;
  final List<Potion> _potionsList;
  @override
  @JsonKey()
  List<Potion> get potionsList {
    if (_potionsList is EqualUnmodifiableListView) return _potionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_potionsList);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? cursor;
  @override
  final String? name;

  @override
  String toString() {
    return 'PotionsListState(exceptionWarning: $exceptionWarning, potionsList: $potionsList, isLoading: $isLoading, cursor: $cursor, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PotionsListStateImpl &&
            (identical(other.exceptionWarning, exceptionWarning) ||
                other.exceptionWarning == exceptionWarning) &&
            const DeepCollectionEquality()
                .equals(other._potionsList, _potionsList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      exceptionWarning,
      const DeepCollectionEquality().hash(_potionsList),
      isLoading,
      cursor,
      name);

  /// Create a copy of PotionsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PotionsListStateImplCopyWith<_$PotionsListStateImpl> get copyWith =>
      __$$PotionsListStateImplCopyWithImpl<_$PotionsListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PotionsListStateImplToJson(
      this,
    );
  }
}

abstract class _PotionsListState implements PotionsListState {
  const factory _PotionsListState(
      {final String? exceptionWarning,
      final List<Potion> potionsList,
      final bool isLoading,
      final String? cursor,
      final String? name}) = _$PotionsListStateImpl;

  factory _PotionsListState.fromJson(Map<String, dynamic> json) =
      _$PotionsListStateImpl.fromJson;

  @override
  String? get exceptionWarning;
  @override
  List<Potion> get potionsList;
  @override
  bool get isLoading;
  @override
  String? get cursor;
  @override
  String? get name;

  /// Create a copy of PotionsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PotionsListStateImplCopyWith<_$PotionsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
