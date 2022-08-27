import 'package:sisdis/indices/i_ab/i_ab_data.dart';

class IAB {
  final IABData iabData = IABData();
  num iIAB() {
    return iICA() + iIQA() + iISA();
  }

  num iICA() {
    return iabData.in_023;
  }

  num iIQA() {
    return 1.0 - iabData.in_075 + iabData.in_076 + iabData.in_084;
  }

  num iISA() {
    return 100;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'IAB: ${iIAB()}';
  }
}
