// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharactersState _$CharactersStateFromJson(Map<String, dynamic> json) {
  return _CharactersState.fromJson(json);
}

/// @nodoc
mixin _$CharactersState {
  String? get exceptionWarning => throw _privateConstructorUsedError;
  List<Character> get charactersList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this CharactersState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharactersStateCopyWith<CharactersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res, CharactersState>;
  @useResult
  $Res call(
      {String? exceptionWarning,
      List<Character> charactersList,
      bool isLoading,
      String? cursor,
      String? name});
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? charactersList = null,
    Object? isLoading = null,
    Object? cursor = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      charactersList: null == charactersList
          ? _value.charactersList
          : charactersList // ignore: cast_nullable_to_non_nullable
              as List<Character>,
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
abstract class _$$CharactersStateImplCopyWith<$Res>
    implements $CharactersStateCopyWith<$Res> {
  factory _$$CharactersStateImplCopyWith(_$CharactersStateImpl value,
          $Res Function(_$CharactersStateImpl) then) =
      __$$CharactersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? exceptionWarning,
      List<Character> charactersList,
      bool isLoading,
      String? cursor,
      String? name});
}

/// @nodoc
class __$$CharactersStateImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersStateImpl>
    implements _$$CharactersStateImplCopyWith<$Res> {
  __$$CharactersStateImplCopyWithImpl(
      _$CharactersStateImpl _value, $Res Function(_$CharactersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? charactersList = null,
    Object? isLoading = null,
    Object? cursor = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CharactersStateImpl(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      charactersList: null == charactersList
          ? _value._charactersList
          : charactersList // ignore: cast_nullable_to_non_nullable
              as List<Character>,
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
class _$CharactersStateImpl
    with DiagnosticableTreeMixin
    implements _CharactersState {
  const _$CharactersStateImpl(
      {this.exceptionWarning,
      final List<Character> charactersList = const [],
      this.isLoading = false,
      this.cursor,
      this.name})
      : _charactersList = charactersList;

  factory _$CharactersStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersStateImplFromJson(json);

  @override
  final String? exceptionWarning;
  final List<Character> _charactersList;
  @override
  @JsonKey()
  List<Character> get charactersList {
    if (_charactersList is EqualUnmodifiableListView) return _charactersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charactersList);
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
    return 'CharactersState(exceptionWarning: $exceptionWarning, charactersList: $charactersList, isLoading: $isLoading, cursor: $cursor, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersState'))
      ..add(DiagnosticsProperty('exceptionWarning', exceptionWarning))
      ..add(DiagnosticsProperty('charactersList', charactersList))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('cursor', cursor))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersStateImpl &&
            (identical(other.exceptionWarning, exceptionWarning) ||
                other.exceptionWarning == exceptionWarning) &&
            const DeepCollectionEquality()
                .equals(other._charactersList, _charactersList) &&
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
      const DeepCollectionEquality().hash(_charactersList),
      isLoading,
      cursor,
      name);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersStateImplCopyWith<_$CharactersStateImpl> get copyWith =>
      __$$CharactersStateImplCopyWithImpl<_$CharactersStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersStateImplToJson(
      this,
    );
  }
}

abstract class _CharactersState implements CharactersState {
  const factory _CharactersState(
      {final String? exceptionWarning,
      final List<Character> charactersList,
      final bool isLoading,
      final String? cursor,
      final String? name}) = _$CharactersStateImpl;

  factory _CharactersState.fromJson(Map<String, dynamic> json) =
      _$CharactersStateImpl.fromJson;

  @override
  String? get exceptionWarning;
  @override
  List<Character> get charactersList;
  @override
  bool get isLoading;
  @override
  String? get cursor;
  @override
  String? get name;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersStateImplCopyWith<_$CharactersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
