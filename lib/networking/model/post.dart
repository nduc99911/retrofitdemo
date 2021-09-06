import 'package:json_annotation/json_annotation.dart';
part 'post.g.dart';

@JsonSerializable()
class PostUser {
  int? userId;
  int? id;
  String? title;
  String? body;
  PostUser(this.userId, this.id, this.title, this.body);
  factory PostUser.fromJson(Map<String, dynamic> json) =>
      _$PostUserFromJson(json);
  Map<String, dynamic> toJson() => _$PostUserToJson(this);
}
