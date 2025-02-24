// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookStateImpl _$$BookStateImplFromJson(Map<String, dynamic> json) =>
    _$BookStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      book: Book.fromJson(json['book'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$BookStateImplToJson(_$BookStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'book': instance.book,
      'isLoading': instance.isLoading,
    };
