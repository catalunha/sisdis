// ignore_for_file: non_constant_identifier_names
import 'dart:math';
import 'package:sisdis/indices/i_ab/i_ab_data.dart';
import 'package:sisdis/objectbox_test/snis_box.dart';

class IndIAB {
  late IndIABData _iabData;
  final IndStore indStore;
  IndIAB(this.indStore) {
    _iabData = IndIABData(indStore);
  }
  double? calculate(String munCode, int year) {
    if (_iabData.existData(munCode, year)) {
      return indIAB();
    } else {
      return null;
    }
  }

  double indIAB() {
    return indICA() + indIQA() + indISA();
  }

  double indICA() {
    return _iabData.IN023_AE;
  }

  double indIQA() {
    double K = (_iabData.QD006 + _iabData.QD008 + _iabData.QD026) /
        (_iabData.QD019 + _iabData.QD020 + _iabData.QD028);
    double NAA = (_iabData.QD006 + _iabData.QD008 + _iabData.QD026) -
        (_iabData.QD007 + _iabData.QD009 + _iabData.QD027);
    double NAR = _iabData.QD006 + _iabData.QD008 + _iabData.QD026;
    return K * (NAA / NAR) * 100;
  }

  num indISA() {
    double part1 = _iabData.AG012;
    double part2a = 0.365;
    double part2b = _iabData.POP * _iabData.IN022_AE;
    double part2c = 1 + (_iabData.IN049_AE) / 100;
    double part2d = _iabData.IN049_5 / _iabData.IN049_AE;
    double part3 = 1 + _iabData.T;

    double n = log((part1) / (part2a * part2b * part2c * part2d)) / log(part3);
    // Fonte Subterrânea = 0
    // Fonte Superficial = 1
    // Fonte Integrado = 2
    if (n <= 0) {
      n = 0;
    }
    if (_iabData.font == 0) {
      if (n >= 2) {
        n = 2;
      } else {
        n = 100 / 2 * n;
      }
    } else if (_iabData.font == 1) {
      if (n >= 2) {
        n = 3;
      } else {
        n = 100 / 3 * n;
      }
    } else {
      if (n >= 5) {
        n = 5;
      } else {
        n = 100 / 5 * n;
      }
    }

    return n;
  }

  @override
  String toString() {
    return 'IAB: ${indIAB()}';
  }
}
