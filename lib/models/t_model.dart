// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class TModel {
  int? id = 0;
  String munCode;
  double? y2015;
  double? y2016;
  double? y2017;
  double? y2018;
  double? y2019;
  double? y2020;
  TModel({
    this.id,
    required this.munCode,
    this.y2015,
    this.y2016,
    this.y2017,
    this.y2018,
    this.y2019,
    this.y2020,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'munCode': munCode,
      '2015': y2015,
      '2016': y2016,
      '2017': y2017,
      '2018': y2018,
      '2019': y2019,
      '2020': y2020,
    };
  }

  factory TModel.fromMap(Map<String, dynamic> map) {
    return TModel(
      id: map['id'] != null ? map['id'] as int : null,
      munCode: map['munCode'] as String,
      y2015: map['2015']?.toDouble(),
      y2016: map['2016']?.toDouble(),
      y2017: map['2017']?.toDouble(),
      y2018: map['2018']?.toDouble(),
      y2019: map['2019']?.toDouble(),
      y2020: map['2020']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory TModel.fromJson(String source) =>
      TModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
