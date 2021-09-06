// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserResponseData _$GetUserResponseDataFromJson(Map<String, dynamic> json) {
  return GetUserResponseData(
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GetUserResponseDataToJson(
        GetUserResponseData instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
