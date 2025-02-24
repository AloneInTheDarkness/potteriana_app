// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spell_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpellState _$SpellStateFromJson(Map<String, dynamic> json) {
  return _SpellState.fromJson(json);
}

/// @nodoc
mixin _$SpellState {
  String? get exceptionWarning => throw _privateConstructorUsedError;
  Spell get spell => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Serializes this SpellState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpellState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpellStateCopyWith<SpellState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellStateCopyWith<$Res> {
  factory $SpellStateCopyWith(
          SpellState value, $Res Function(SpellState) then) =
      _$SpellStateCopyWithImpl<$Res, SpellState>;
  @useResult
  $Res call({String? exceptionWarning, Spell spell, bool isLoading});

  $SpellCopyWith<$Res> get spell;
}

/// @nodoc
class _$SpellStateCopyWithImpl<$Res, $Val extends SpellState>
    implements $SpellStateCopyWith<$Res> {
  _$SpellStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpellState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? spell = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      spell: null == spell
          ? _value.spell
          : spell // ignore: cast_nullable_to_non_nullable
              as Spell,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SpellState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpellCopyWith<$Res> get spell {
    return $SpellCopyWith<$Res>(_value.spell, (value) {
      return _then(_value.copyWith(spell: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpellStateImplCopyWith<$Res>
    implements $SpellStateCopyWith<$Res> {
  factory _$$SpellStateImplCopyWith(
          _$SpellStateImpl value, $Res Function(_$SpellStateImpl) then) =
      __$$SpellStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? exceptionWarning, Spell spell, bool isLoading});

  @override
  $SpellCopyWith<$Res> get spell;
}

/// @nodoc
class __$$SpellStateImplCopyWithImpl<$Res>
    extends _$SpellStateCopyWithImpl<$Res, _$SpellStateImpl>
    implements _$$SpellStateImplCopyWith<$Res> {
  __$$SpellStateImplCopyWithImpl(
      _$SpellStateImpl _value, $Res Function(_$SpellStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpellState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? spell = null,
    Object? isLoading = null,
  }) {
    return _then(_$SpellStateImpl(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      spell: null == spell
          ? _value.spell
          : spell // ignore: cast_nullable_to_non_nullable
              as Spell,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpellStateImpl with DiagnosticableTreeMixin implements _SpellState {
  const _$SpellStateImpl(
      {this.exceptionWarning, required this.spell, this.isLoading = false});

  factory _$SpellStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpellStateImplFromJson(json);

  @override
  final String? exceptionWarning;
  @override
  final Spell spell;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpellState(exceptionWarning: $exceptionWarning, spell: $spell, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpellState'))
      ..add(DiagnosticsProperty('exceptionWarning', exceptionWarning))
      ..add(DiagnosticsProperty('spell', spell))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpellStateImpl &&
            (identical(other.exceptionWarning, exceptionWarning) ||
                other.exceptionWarning == exceptionWarning) &&
            (identical(other.spell, spell) || other.spell == spell) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, exceptionWarning, spell, isLoading);

  /// Create a copy of SpellState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpellStateImplCopyWith<_$SpellStateImpl> get copyWith =>
      __$$SpellStateImplCopyWithImpl<_$SpellStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpellStateImplToJson(
      this,
    );
  }
}

abstract class _SpellState implements SpellState {
  const factory _SpellState(
      {final String? exceptionWarning,
      required final Spell spell,
      final bool isLoading}) = _$SpellStateImpl;

  factory _SpellState.fromJson(Map<String, dynamic> json) =
      _$SpellStateImpl.fromJson;

  @override
  String? get exceptionWarning;
  @override
  Spell get spell;
  @override
  bool get isLoading;

  /// Create a copy of SpellState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpellStateImplCopyWith<_$SpellStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
