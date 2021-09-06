import 'package:json_annotation/json_annotation.dart';

import '../comment.dart';
part 'get_comment.g.dart';

@JsonSerializable()
class GetCommentsResponse {
  GetCommentsResponse(this.data);

  List<Comment>? data;

  factory GetCommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCommentsResponseFromJson(json);
}
