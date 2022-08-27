// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class ANAModel {
  int? id = 0;
  String munCode;
  int? font;
  ANAModel({
    this.id,
    required this.munCode,
    this.font,
  });
  // Fonte Subterrânea = 0
  // Fonte Superficial = 1
  // Fonte Integrado = 2

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'munCode': munCode,
      'font': font,
    };
  }

  factory ANAModel.fromMap(Map<String, dynamic> map) {
    return ANAModel(
      id: map['id'] != null ? map['id'] as int : null,
      munCode: map['munCode'] as String,
      font: map['font'] != null ? map['font'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ANAModel.fromJson(String source) =>
      ANAModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
