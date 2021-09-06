import 'package:json_annotation/json_annotation.dart';
import 'package:retrofitdemo/networking/model/post.dart';
part 'post_user.g.dart';

@JsonSerializable()
class PostUserData {
  PostUser data;

  PostUserData(this.data);
  factory PostUserData.fromJson(Map<String, dynamic> json) =>
      _$PostUserDataFromJson(json);
  Map<String, dynamic> toJson() => _$PostUserDataToJson(this);
}
