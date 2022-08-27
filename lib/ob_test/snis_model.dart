// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class SNISModel {
  int? id = 0;
  String munCode;
  String munName;
  String munUF;
  int year;
  double? IN021_AE;
  double? IN023_AE;
  double? IN049_AE;
  double? QD006;
  double? QD008;
  double? QD019;
  double? QD020;
  double? QD026;
  double? QD028;
  double? AG006;
  double? AG012;
  double? AG024;
  SNISModel({
    this.id = 0,
    required this.munCode,
    required this.munName,
    required this.munUF,
    required this.year,
    required this.IN021_AE,
    required this.IN023_AE,
    required this.IN049_AE,
    required this.QD006,
    required this.QD008,
    required this.QD019,
    required this.QD020,
    required this.QD026,
    required this.QD028,
    required this.AG006,
    required this.AG012,
    required this.AG024,
  });

  @override
  String toString() {
    return 'SNISModel(id: $id, munCode: $munCode, munName: $munName, munUF: $munUF, year: $year, IN021_AE: $IN021_AE, IN023_AE: $IN023_AE, IN049_AE: $IN049_AE, QD006: $QD006, QD008: $QD008, QD019: $QD019, QD020: $QD020, QD026: $QD026, QD028: $QD028, AG006: $AG006, AG012: $AG012, AG024: $AG024)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'munCode': munCode,
      'munName': munName,
      'munUF': munUF,
      'year': year,
      'IN021_AE': IN021_AE,
      'IN023_AE': IN023_AE,
      'IN049_AE': IN049_AE,
      'QD006': QD006,
      'QD008': QD008,
      'QD019': QD019,
      'QD020': QD020,
      'QD026': QD026,
      'QD028': QD028,
      'AG006': AG006,
      'AG012': AG012,
      'AG024': AG024,
    };
  }

  factory SNISModel.fromMap(Map<String, dynamic> map) {
    return SNISModel(
      id: map['id'] != null ? map['id'] as int : null,
      munCode: map['munCode'] as String,
      munName: map['munName'] as String,
      munUF: map['munUF'] as String,
      year: map['year'] as int,
      IN021_AE: map['IN021_AE'] != null ? map['IN021_AE'].toDouble() : null,
      IN023_AE: map['IN023_AE'] != null ? map['IN023_AE'].toDouble() : null,
      IN049_AE: map['IN049_AE'] != null ? map['IN049_AE'].toDouble() : null,
      QD006: map['QD006'] != null ? map['QD006'].toDouble() : null,
      QD008: map['QD008'] != null ? map['QD008'].toDouble() : null,
      QD019: map['QD019'] != null ? map['QD019'].toDouble() : null,
      QD020: map['QD020'] != null ? map['QD020'].toDouble() : null,
      QD026: map['QD026'] != null ? map['QD026'].toDouble() : null,
      QD028: map['QD028'] != null ? map['QD028'].toDouble() : null,
      AG006: map['AG006'] != null ? map['AG006'].toDouble() : null,
      AG012: map['AG012'] != null ? map['AG012'].toDouble() : null,
      AG024: map['AG024'] != null ? map['AG024'].toDouble() : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SNISModel.fromJson(String source) =>
      SNISModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
