// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooksStateImpl _$$BooksStateImplFromJson(Map<String, dynamic> json) =>
    _$BooksStateImpl(
      exceptionWarning: json['exceptionWarning'] as String?,
      bookerCatch: (json['bookerCatch'] as List<dynamic>?)
              ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$BooksStateImplToJson(_$BooksStateImpl instance) =>
    <String, dynamic>{
      'exceptionWarning': instance.exceptionWarning,
      'bookerCatch': instance.bookerCatch,
      'isLoading': instance.isLoading,
    };
