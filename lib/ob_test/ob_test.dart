// ignore_for_file: non_constant_identifier_names

import 'package:sisdis/ob_test/snis_model.dart';
import 'package:sisdis/objectbox_models/objectbox.g.dart';

ob_test() async {
  print('Start test');
  final store = openStore(directory: 'lib/objectbox_models');
  final SNISOBox = store.box<SNISModel>();
  // String dataMGFile = '/home/catalunha/myapp/sisdis/lib/data/mg/data_mg.json';
  // var dataMGJson = File(dataMGFile).readAsStringSync();

  // final dataMGJsonObj = json.decode(dataMGJson);
  // final List<SNISModel> list = [];

  // list.clear();
  // for (var element in dataMGJsonObj) {
  //   list.add(SNISModel.fromMap(element));
  // }

  // SNISOBox.putMany(list);
  List<SNISModel> SNISList = SNISOBox.getAll();
  print(SNISList.length);

  Query<SNISModel> query =
      SNISOBox.query(SNISModel_.munCode.equals('310030')).build();
  List<SNISModel> queryList = query.find();
  print(queryList.length);

  // SNISOBox.removeAll();

  store.close(); // don't forget to close the store

  print('End test');
}
