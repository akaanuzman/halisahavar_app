// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) => MatchModel(
      children: (json['children'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Children.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchModelToJson(MatchModel instance) =>
    <String, dynamic>{
      'children': instance.children,
    };

Children _$ChildrenFromJson(Map<String, dynamic> json) => Children(
      evSahibi: json['evSahibi'] as String?,
      deplasman: json['deplasman'] as String?,
      tahmin: json['tahmin'] as String?,
      oran: (json['oran'] as num?)?.toDouble(),
      yuzde: json['yuzde'] as int?,
    );

Map<String, dynamic> _$ChildrenToJson(Children instance) => <String, dynamic>{
      'evSahibi': instance.evSahibi,
      'deplasman': instance.deplasman,
      'tahmin': instance.tahmin,
      'oran': instance.oran,
      'yuzde': instance.yuzde,
    };
