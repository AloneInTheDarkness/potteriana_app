// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BooksState _$BooksStateFromJson(Map<String, dynamic> json) {
  return _BooksState.fromJson(json);
}

/// @nodoc
mixin _$BooksState {
  String? get exceptionWarning => throw _privateConstructorUsedError;
  List<Book> get bookerCatch => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Serializes this BooksState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BooksStateCopyWith<BooksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res, BooksState>;
  @useResult
  $Res call({String? exceptionWarning, List<Book> bookerCatch, bool isLoading});
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? bookerCatch = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      bookerCatch: null == bookerCatch
          ? _value.bookerCatch
          : bookerCatch // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooksStateImplCopyWith<$Res>
    implements $BooksStateCopyWith<$Res> {
  factory _$$BooksStateImplCopyWith(
          _$BooksStateImpl value, $Res Function(_$BooksStateImpl) then) =
      __$$BooksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? exceptionWarning, List<Book> bookerCatch, bool isLoading});
}

/// @nodoc
class __$$BooksStateImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksStateImpl>
    implements _$$BooksStateImplCopyWith<$Res> {
  __$$BooksStateImplCopyWithImpl(
      _$BooksStateImpl _value, $Res Function(_$BooksStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exceptionWarning = freezed,
    Object? bookerCatch = null,
    Object? isLoading = null,
  }) {
    return _then(_$BooksStateImpl(
      exceptionWarning: freezed == exceptionWarning
          ? _value.exceptionWarning
          : exceptionWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      bookerCatch: null == bookerCatch
          ? _value._bookerCatch
          : bookerCatch // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooksStateImpl with DiagnosticableTreeMixin implements _BooksState {
  const _$BooksStateImpl(
      {this.exceptionWarning,
      final List<Book> bookerCatch = const [],
      this.isLoading = false})
      : _bookerCatch = bookerCatch;

  factory _$BooksStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooksStateImplFromJson(json);

  @override
  final String? exceptionWarning;
  final List<Book> _bookerCatch;
  @override
  @JsonKey()
  List<Book> get bookerCatch {
    if (_bookerCatch is EqualUnmodifiableListView) return _bookerCatch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookerCatch);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BooksState(exceptionWarning: $exceptionWarning, bookerCatch: $bookerCatch, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BooksState'))
      ..add(DiagnosticsProperty('exceptionWarning', exceptionWarning))
      ..add(DiagnosticsProperty('bookerCatch', bookerCatch))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksStateImpl &&
            (identical(other.exceptionWarning, exceptionWarning) ||
                other.exceptionWarning == exceptionWarning) &&
            const DeepCollectionEquality()
                .equals(other._bookerCatch, _bookerCatch) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exceptionWarning,
      const DeepCollectionEquality().hash(_bookerCatch), isLoading);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksStateImplCopyWith<_$BooksStateImpl> get copyWith =>
      __$$BooksStateImplCopyWithImpl<_$BooksStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooksStateImplToJson(
      this,
    );
  }
}

abstract class _BooksState implements BooksState {
  const factory _BooksState(
      {final String? exceptionWarning,
      final List<Book> bookerCatch,
      final bool isLoading}) = _$BooksStateImpl;

  factory _BooksState.fromJson(Map<String, dynamic> json) =
      _$BooksStateImpl.fromJson;

  @override
  String? get exceptionWarning;
  @override
  List<Book> get bookerCatch;
  @override
  bool get isLoading;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooksStateImplCopyWith<_$BooksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
