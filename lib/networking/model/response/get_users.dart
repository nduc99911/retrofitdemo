import 'package:json_annotation/json_annotation.dart';

import 'package:retrofitdemo/networking/model/meta.dart';
import 'package:retrofitdemo/networking/model/user.dart';
part 'get_users.g.dart';

@JsonSerializable()
class GetUserResponseData {
  Meta? meta;
  List<User>? data;
  GetUserResponseData({
    this.meta,
    this.data,
  });
  factory GetUserResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetUserResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetUserResponseDataToJson(this);
}
