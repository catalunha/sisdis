import 'dart:convert';
import 'dart:io';

import 'package:sisdis/models/ana_model.dart';
import 'package:sisdis/models/mun_model.dart';
import 'package:sisdis/models/pop_model.dart';
import 'package:sisdis/models/snis_model.dart';
import 'package:sisdis/models/t_model.dart';
import 'package:sisdis/objectbox_models/objectbox.g.dart';

class IndStore {
  static final String _folderOBox = 'lib/objectbox_models';
  static final Store _store = openStore(directory: _folderOBox);
  final snisBox = _store.box<SNISModel>();
  final popBox = _store.box<PopModel>();
  final tBox = _store.box<TModel>();
  final munBox = _store.box<MunModel>();
  final anaBox = _store.box<ANAModel>();

  updateSNIS({bool update = false}) {
    if (update) {
      print('Removendo todos os dados do snisBox');
      snisBox.removeAll();
    }
    if (snisBox.isEmpty()) {
      print('Lendo dados SNIS do json para snisBox');
      String dataMGFile =
          '/home/catalunha/myapp/sisdis/lib/data/mg/snis_mg.json';
      var dataMGJson = File(dataMGFile).readAsStringSync();

      final dataMGJsonObj = json.decode(dataMGJson);
      final List<SNISModel> list =
          dataMGJsonObj.map<SNISModel>((e) => SNISModel.fromMap(e)).toList();

      snisBox.putMany(list);
    } else {
      print('snisBox com dados');
    }
  }

  updatePop({bool update = false}) {
    if (update) {
      print('Removendo todos os dados do popBox');
      popBox.removeAll();
    }
    if (popBox.isEmpty()) {
      print('Lendo dados Pop do json para popBox');
      String dataMGFile =
          '/home/catalunha/myapp/sisdis/lib/data/mg/pop_mg.json';
      var dataMGJson = File(dataMGFile).readAsStringSync();

      final dataMGJsonObj = json.decode(dataMGJson);
      final List<PopModel> list =
          dataMGJsonObj.map<PopModel>((e) => PopModel.fromMap(e)).toList();

      popBox.putMany(list);
    } else {
      print('popBox com dados');
    }
  }

  updateT({bool update = false}) {
    if (update) {
      print('Removendo todos os dados do tBox');
      tBox.removeAll();
    }
    if (tBox.isEmpty()) {
      print('Lendo dados T do json para tBox');
      String dataMGFile = '/home/catalunha/myapp/sisdis/lib/data/mg/t_mg.json';
      var dataMGJson = File(dataMGFile).readAsStringSync();

      final dataMGJsonObj = json.decode(dataMGJson);
      final List<TModel> list =
          dataMGJsonObj.map<TModel>((e) => TModel.fromMap(e)).toList();

      tBox.putMany(list);
    } else {
      print('tBox com dados');
    }
  }

  updateMun({bool update = false}) {
    if (update) {
      print('Removendo todos os dados do munBox');
      munBox.removeAll();
    }
    if (munBox.isEmpty()) {
      print('Lendo dados Mun do json para munBox');
      String dataMGFile =
          '/home/catalunha/myapp/sisdis/lib/data/mg/mun_mg.json';
      var dataMGJson = File(dataMGFile).readAsStringSync();

      final dataMGJsonObj = json.decode(dataMGJson);
      final List<MunModel> list =
          dataMGJsonObj.map<MunModel>((e) => MunModel.fromMap(e)).toList();

      munBox.putMany(list);
    } else {
      print('munBox com dados');
    }
  }

  updateAna({bool update = false}) {
    if (update) {
      print('Removendo todos os dados do anaBox');
      anaBox.removeAll();
    }
    if (anaBox.isEmpty()) {
      print('Lendo dados Ana do json para anaBox');
      String dataMGFile =
          '/home/catalunha/myapp/sisdis/lib/data/mg/ana_mg.json';
      var dataMGJson = File(dataMGFile).readAsStringSync();

      final dataMGJsonObj = json.decode(dataMGJson);
      final List<ANAModel> list =
          dataMGJsonObj.map<ANAModel>((e) => ANAModel.fromMap(e)).toList();

      anaBox.putMany(list);
    } else {
      print('anaBox com dados');
    }
  }

  close() {
    _store.close(); // don't forget to close the store
  }
}
