import 'package:json_annotation/json_annotation.dart';

import 'package:retrofitdemo/networking/model/Pagination.dart';
part 'meta.g.dart';

@JsonSerializable()
class Meta {
  Pagination? pagination;
  Meta({required this.pagination});
  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
