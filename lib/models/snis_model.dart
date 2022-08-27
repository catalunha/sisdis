// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class SNISModel {
  int? id = 0;
  String munCode;
  int year;
  double? IN022_AE;
  double? IN023_AE;
  double? IN049_AE;
  double? QD006;
  double? QD007;
  double? QD008;
  double? QD009;
  double? QD019;
  double? QD020;
  double? QD026;
  double? QD027;
  double? QD028;
  double? AG006;
  double? AG012;
  double? AG024;
  SNISModel({
    this.id,
    required this.munCode,
    required this.year,
    this.IN022_AE,
    this.IN023_AE,
    this.IN049_AE,
    this.QD006,
    this.QD007,
    this.QD008,
    this.QD009,
    this.QD019,
    this.QD020,
    this.QD026,
    this.QD027,
    this.QD028,
    this.AG006,
    this.AG012,
    this.AG024,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'munCode': munCode,
      'year': year,
      'IN022_AE': IN022_AE,
      'IN023_AE': IN023_AE,
      'IN049_AE': IN049_AE,
      'QD006': QD006,
      'QD007': QD007,
      'QD008': QD008,
      'QD009': QD009,
      'QD019': QD019,
      'QD020': QD020,
      'QD026': QD026,
      'QD027': QD027,
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
      year: map['year'] as int,
      IN022_AE: map['IN022_AE']?.toDouble(),
      IN023_AE: map['IN023_AE']?.toDouble(),
      IN049_AE: map['IN049_AE']?.toDouble(),
      QD006: map['QD006']?.toDouble(),
      QD007: map['QD007']?.toDouble(),
      QD008: map['QD008']?.toDouble(),
      QD009: map['QD009']?.toDouble(),
      QD019: map['QD019']?.toDouble(),
      QD020: map['QD020']?.toDouble(),
      QD026: map['QD026']?.toDouble(),
      QD027: map['QD027']?.toDouble(),
      QD028: map['QD028']?.toDouble(),
      AG006: map['AG006']?.toDouble(),
      AG012: map['AG012']?.toDouble(),
      AG024: map['AG024']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory SNISModel.fromJson(String source) =>
      SNISModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SNISModel(id: $id, munCode: $munCode, year: $year, IN022_AE: $IN022_AE, IN023_AE: $IN023_AE, IN049_AE: $IN049_AE, QD006: $QD006, QD007: $QD007, QD008: $QD008, QD009: $QD009, QD019: $QD019, QD020: $QD020, QD026: $QD026, QD027: $QD027, QD028: $QD028, AG006: $AG006, AG012: $AG012, AG024: $AG024)';
  }
}
