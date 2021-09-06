import 'package:json_annotation/json_annotation.dart';

import 'package:retrofitdemo/networking/model/link.dart';
part 'Pagination.g.dart';

@JsonSerializable()
class Pagination {
  int? total;
  int? pages;
  int? page;
  int? limit;
  Links? links;
  Pagination({
    required this.total,
    required this.pages,
    required this.page,
    required this.limit,
    required this.links,
  });
  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
