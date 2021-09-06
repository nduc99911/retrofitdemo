import 'package:json_annotation/json_annotation.dart';
part 'link.g.dart';

@JsonSerializable()
class Links {
  int? previous;
  String? current;
  String? next;

  Links({
    this.previous,
    this.current,
    this.next,
  });
  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
