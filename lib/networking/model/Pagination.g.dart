// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return Pagination(
    total: json['total'] as int?,
    pages: json['pages'] as int?,
    page: json['page'] as int?,
    limit: json['limit'] as int?,
    links: json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'pages': instance.pages,
      'page': instance.page,
      'limit': instance.limit,
      'links': instance.links,
    };
