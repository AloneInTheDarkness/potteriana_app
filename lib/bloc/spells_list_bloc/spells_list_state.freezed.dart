// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spells_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpellsListState _$SpellsListStateFromJson(Map<String, dynamic> json) {
  return _SpellsListState.fromJson(json);
}

/// @nodoc
mixin _$SpellsListState {
  String? get exceptionWarning => throw _privateConstructorUsedError;
  List<Spell> get spellsList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this SpellsListState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpellsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpellsListStateCopyWith<SpellsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellsListStateCopyWith<$Res> {
  factory $SpellsListStateCopyWith(
          SpellsListState value, $Res Function(SpellsListState) then) =
      _$SpellsListStateCopyWithImpl<$Res, SpellsListState>;
  @useResult
  $Res call(
      {String? exceptionWarning,
      List<Spell> spellsList,
      bool isLoading,
      String? cursor,
      String? name});
}

/// @nodoc
class _$SpellsListStateCopyWithImpl<$Res, $Val extends SpellsListState>
    implements $SpellsListStateCopyWith<$Res> {
  _$SpellsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpellsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? spellsList = null,
    Object? isLoading = null,
    Object? cursor = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      spellsList: null == spellsList
          ? _value.spellsList
          : spellsList // ignore: cast_nullable_to_non_nullable
              as List<Spell>,
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
abstract class _$$SpellsListStateImplCopyWith<$Res>
    implements $SpellsListStateCopyWith<$Res> {
  factory _$$SpellsListStateImplCopyWith(_$SpellsListStateImpl value,
          $Res Function(_$SpellsListStateImpl) then) =
      __$$SpellsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? exceptionWarning,
      List<Spell> spellsList,
      bool isLoading,
      String? cursor,
      String? name});
}

/// @nodoc
class __$$SpellsListStateImplCopyWithImpl<$Res>
    extends _$SpellsListStateCopyWithImpl<$Res, _$SpellsListStateImpl>
    implements _$$SpellsListStateImplCopyWith<$Res> {
  __$$SpellsListStateImplCopyWithImpl(
      _$SpellsListStateImpl _value, $Res Function(_$SpellsListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpellsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? spellsList = null,
    Object? isLoading = null,
    Object? cursor = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SpellsListStateImpl(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      spellsList: null == spellsList
          ? _value._spellsList
          : spellsList // ignore: cast_nullable_to_non_nullable
              as List<Spell>,
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
class _$SpellsListStateImpl
    with DiagnosticableTreeMixin
    implements _SpellsListState {
  const _$SpellsListStateImpl(
      {this.exceptionWarning,
      final List<Spell> spellsList = const [],
      this.isLoading = false,
      this.cursor,
      this.name})
      : _spellsList = spellsList;

  factory _$SpellsListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpellsListStateImplFromJson(json);

  @override
  final String? exceptionWarning;
  final List<Spell> _spellsList;
  @override
  @JsonKey()
  List<Spell> get spellsList {
    if (_spellsList is EqualUnmodifiableListView) return _spellsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spellsList);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? cursor;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpellsListState(exceptionWarning: $exceptionWarning, spellsList: $spellsList, isLoading: $isLoading, cursor: $cursor, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpellsListState'))
      ..add(DiagnosticsProperty('exceptionWarning', exceptionWarning))
      ..add(DiagnosticsProperty('spellsList', spellsList))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('cursor', cursor))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpellsListStateImpl &&
            (identical(other.exceptionWarning, exceptionWarning) ||
                other.exceptionWarning == exceptionWarning) &&
            const DeepCollectionEquality()
                .equals(other._spellsList, _spellsList) &&
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
      const DeepCollectionEquality().hash(_spellsList),
      isLoading,
      cursor,
      name);

  /// Create a copy of SpellsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpellsListStateImplCopyWith<_$SpellsListStateImpl> get copyWith =>
      __$$SpellsListStateImplCopyWithImpl<_$SpellsListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpellsListStateImplToJson(
      this,
    );
  }
}

abstract class _SpellsListState implements SpellsListState {
  const factory _SpellsListState(
      {final String? exceptionWarning,
      final List<Spell> spellsList,
      final bool isLoading,
      final String? cursor,
      final String? name}) = _$SpellsListStateImpl;

  factory _SpellsListState.fromJson(Map<String, dynamic> json) =
      _$SpellsListStateImpl.fromJson;

  @override
  String? get exceptionWarning;
  @override
  List<Spell> get spellsList;
  @override
  bool get isLoading;
  @override
  String? get cursor;
  @override
  String? get name;

  /// Create a copy of SpellsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpellsListStateImplCopyWith<_$SpellsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
