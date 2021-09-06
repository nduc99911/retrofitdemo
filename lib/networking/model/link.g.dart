// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    previous: json['previous'] as int?,
    current: json['current'] as String?,
    next: json['next'] as String?,
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'previous': instance.previous,
      'current': instance.current,
      'next': instance.next,
    };
