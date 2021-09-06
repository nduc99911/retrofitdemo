import 'package:json_annotation/json_annotation.dart';

import '../user.dart';
part 'get_user.g.dart';

@JsonSerializable()
class GetUserResponse {
  GetUserResponse(
    this.data,
  );

  final User data;

  factory GetUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserResponseFromJson(json);
}
