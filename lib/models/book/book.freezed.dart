// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String? get author => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get dedication => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get wiki => throw _privateConstructorUsedError;
  Chapters? get chapters => throw _privateConstructorUsedError;

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {String? author,
      String? slug,
      String? title,
      String? summary,
      String? cover,
      String? dedication,
      int? pages,
      String? releaseDate,
      String? wiki,
      Chapters? chapters});

  $ChaptersCopyWith<$Res>? get chapters;
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? summary = freezed,
    Object? cover = freezed,
    Object? dedication = freezed,
    Object? pages = freezed,
    Object? releaseDate = freezed,
    Object? wiki = freezed,
    Object? chapters = freezed,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      dedication: freezed == dedication
          ? _value.dedication
          : dedication // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      wiki: freezed == wiki
          ? _value.wiki
          : wiki // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as Chapters?,
    ) as $Val);
  }

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChaptersCopyWith<$Res>? get chapters {
    if (_value.chapters == null) {
      return null;
    }

    return $ChaptersCopyWith<$Res>(_value.chapters!, (value) {
      return _then(_value.copyWith(chapters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? author,
      String? slug,
      String? title,
      String? summary,
      String? cover,
      String? dedication,
      int? pages,
      String? releaseDate,
      String? wiki,
      Chapters? chapters});

  @override
  $ChaptersCopyWith<$Res>? get chapters;
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? summary = freezed,
    Object? cover = freezed,
    Object? dedication = freezed,
    Object? pages = freezed,
    Object? releaseDate = freezed,
    Object? wiki = freezed,
    Object? chapters = freezed,
  }) {
    return _then(_$BookImpl(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      dedication: freezed == dedication
          ? _value.dedication
          : dedication // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      wiki: freezed == wiki
          ? _value.wiki
          : wiki // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as Chapters?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl with DiagnosticableTreeMixin implements _Book {
  const _$BookImpl(
      {this.author,
      this.slug,
      this.title,
      this.summary,
      this.cover,
      this.dedication,
      this.pages,
      this.releaseDate,
      this.wiki,
      this.chapters});

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  final String? author;
  @override
  final String? slug;
  @override
  final String? title;
  @override
  final String? summary;
  @override
  final String? cover;
  @override
  final String? dedication;
  @override
  final int? pages;
  @override
  final String? releaseDate;
  @override
  final String? wiki;
  @override
  final Chapters? chapters;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Book(author: $author, slug: $slug, title: $title, summary: $summary, cover: $cover, dedication: $dedication, pages: $pages, releaseDate: $releaseDate, wiki: $wiki, chapters: $chapters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Book'))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('slug', slug))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('summary', summary))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('dedication', dedication))
      ..add(DiagnosticsProperty('pages', pages))
      ..add(DiagnosticsProperty('releaseDate', releaseDate))
      ..add(DiagnosticsProperty('wiki', wiki))
      ..add(DiagnosticsProperty('chapters', chapters));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.dedication, dedication) ||
                other.dedication == dedication) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.wiki, wiki) || other.wiki == wiki) &&
            (identical(other.chapters, chapters) ||
                other.chapters == chapters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, author, slug, title, summary,
      cover, dedication, pages, releaseDate, wiki, chapters);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {final String? author,
      final String? slug,
      final String? title,
      final String? summary,
      final String? cover,
      final String? dedication,
      final int? pages,
      final String? releaseDate,
      final String? wiki,
      final Chapters? chapters}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  String? get author;
  @override
  String? get slug;
  @override
  String? get title;
  @override
  String? get summary;
  @override
  String? get cover;
  @override
  String? get dedication;
  @override
  int? get pages;
  @override
  String? get releaseDate;
  @override
  String? get wiki;
  @override
  Chapters? get chapters;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
