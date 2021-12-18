import 'package:json_annotation/json_annotation.dart';

part 'match_model.g.dart';

@JsonSerializable()
class MatchModel {
  List<Children?>? children;

  MatchModel({this.children});

  factory MatchModel.fromJson(Map<String, dynamic> json) =>
      _$MatchModelFromJson(json);

  Map<String, dynamic> toJson() => _$MatchModelToJson(this);
}

@JsonSerializable()
class Children {
  String? evSahibi;
  String? deplasman;
  String? tahmin;
  double? oran;
  int? yuzde;

  Children({this.evSahibi, this.deplasman, this.tahmin, this.oran, this.yuzde});

  factory Children.fromJson(Map<String, dynamic> json) =>
      _$ChildrenFromJson(json);

  Map<String, dynamic> toJson() => _$ChildrenToJson(this);
}
