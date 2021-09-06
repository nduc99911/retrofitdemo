// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostUser _$PostUserFromJson(Map<String, dynamic> json) {
  return PostUser(
    json['userId'] as int?,
    json['id'] as int?,
    json['title'] as String?,
    json['body'] as String?,
  );
}

Map<String, dynamic> _$PostUserToJson(PostUser instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
