// ignore_for_file: non_constant_identifier_names

import 'package:sisdis/indices/i_ab/i_ab.dart';
import 'package:sisdis/models/mun_model.dart';
import 'package:sisdis/objectbox_test/snis_box.dart';

calcIndicadores() async {
  print('Start calc');
  IndStore indStore = IndStore();
  // indStore.updateSNIS();
  // indStore.updateMun();
  // indStore.updatePop(update: true);
  // indStore.updateT(update: true);
  // indStore.updateAna();
  // Box<SNISModel> snisOBox = snisOBoxStore.getBox();
  // final store = openStore(directory: 'lib/objectbox_models');
  // final SNISOBox = store.box<SNISModel>();
  // if (SNISOBox.isEmpty()) {
  //   String dataMGFile = '/home/catalunha/myapp/sisdis/lib/data/mg/data_mg.json';
  //   var dataMGJson = File(dataMGFile).readAsStringSync();

  //   final dataMGJsonObj = json.decode(dataMGJson);
  //   final List<SNISModel> list = [];

  //   list.clear();
  //   for (var element in dataMGJsonObj) {
  //     list.add(SNISModel.fromMap(element));
  //   }
  //   SNISOBox.putMany(list);
  // } else {
  //   print('SNISOBox com dados');
  // }
  print('snisBox: ${indStore.snisBox.getAll().length}');
  print('popBox: ${indStore.popBox.getAll().length}');
  print('tBox: ${indStore.tBox.getAll().length}');
  print('munBox: ${indStore.munBox.getAll().length}');
  print('anaBox: ${indStore.anaBox.getAll().length}');

  // Query<SNISModel> query = indStore.snisBox
  //     .query(
  //         SNISModel_.munCode.equals('3100302') & SNISModel_.year.equals(2020))
  //     .build();
  // List<SNISModel> queryList = query.find();
  // print(queryList.length);
  // print(queryList);

  // IndIAB indIAB = IndIAB(indStore);
  // double? iab = indIAB.calculate('3100302', 2020);
  // print('IAB: ${iab ?? "?"}');

  // List<PopModel> popModelList = indStore.popBox.getAll();
  // for (var element in popModelList) {
  //   print(element);
  // }

  IndIAB indIAB = IndIAB(indStore);
  List<MunModel> list = indStore.munBox.getAll();
  for (var mun in list) {
    for (var year in [2015, 2016, 2017, 2018, 2019, 2020]) {
      double? iab = indIAB.calculate(mun.munCode, year);
      print('Mun.:${mun.munCode} Ano:$year. IAB: ${iab ?? "?"}');
    }
  }

  indStore.close(); // don't forget to close the store
  print('End calc');
}
