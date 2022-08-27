// ignore_for_file: non_constant_identifier_names

import 'package:sisdis/models/ana_model.dart';
import 'package:sisdis/models/pop_model.dart';
import 'package:sisdis/models/snis_model.dart';
import 'package:sisdis/models/t_model.dart';
import 'package:sisdis/objectbox_models/objectbox.g.dart';
import 'package:sisdis/objectbox_test/snis_box.dart';

class IndIABData {
  final IndStore indStore;
  IndIABData(this.indStore);
  bool existData(String munCode, int year) {
    bool result = true;
    Query<SNISModel> snisQuery = indStore.snisBox
        .query(
            SNISModel_.munCode.equals(munCode) & SNISModel_.year.equals(year))
        .build();
    SNISModel? snisModel = snisQuery.findFirst();

    Query<PopModel> popQuery =
        indStore.popBox.query(PopModel_.munCode.equals(munCode)).build();
    PopModel? popModel = popQuery.findFirst();

    Query<TModel> tQuery =
        indStore.tBox.query(TModel_.munCode.equals(munCode)).build();
    TModel? tModel = tQuery.findFirst();

    Query<ANAModel> anaQuery =
        indStore.anaBox.query(ANAModel_.munCode.equals(munCode)).build();
    ANAModel? anaModel = anaQuery.findFirst();
    // print('+++ Analisando falta de dados');
    List<String> faltaDados = [];
    if (snisModel != null) {
      if (snisModel.AG012 != null) {
        AG012 = snisModel.AG012!;
      } else {
        faltaDados.add('snisModel.AG012');
        result = false;
      }
      if (snisModel.IN022_AE != null) {
        IN022_AE = snisModel.IN022_AE!;
      } else {
        faltaDados.add('snisModel.IN022_AE');
        result = false;
      }
      if (snisModel.IN023_AE != null) {
        IN023_AE = snisModel.IN023_AE!;
      } else {
        faltaDados.add('snisModel.IN022_AE');
        result = false;
      }
      if (snisModel.IN049_AE != null) {
        IN049_AE = snisModel.IN049_AE!;
      } else {
        faltaDados.add('snisModel.IN049_AE');
        result = false;
      }
      if (snisModel.QD006 != null) {
        QD006 = snisModel.QD006!;
      } else {
        faltaDados.add('snisModel.QD006');
        result = false;
      }
      if (snisModel.QD007 != null) {
        QD007 = snisModel.QD007!;
      } else {
        faltaDados.add('snisModel.QD007');
        result = false;
      }
      if (snisModel.QD008 != null) {
        QD008 = snisModel.QD008!;
      } else {
        faltaDados.add('snisModel.QD008');
        result = false;
      }
      if (snisModel.QD009 != null) {
        QD009 = snisModel.QD009!;
      } else {
        faltaDados.add('snisModel.QD009');
        result = false;
      }
      if (snisModel.QD026 != null) {
        QD026 = snisModel.QD026!;
      } else {
        faltaDados.add('snisModel.QD026');
        result = false;
      }
      if (snisModel.QD019 != null) {
        QD019 = snisModel.QD019!;
      } else {
        faltaDados.add('snisModel.QD019');
        result = false;
      }
      if (snisModel.QD020 != null) {
        QD020 = snisModel.QD020!;
      } else {
        faltaDados.add('snisModel.QD020');
        result = false;
      }
      if (snisModel.QD027 != null) {
        QD027 = snisModel.QD027!;
      } else {
        faltaDados.add('snisModel.QD027');
        result = false;
      }
      if (snisModel.QD028 != null) {
        QD028 = snisModel.QD028!;
      } else {
        faltaDados.add('snisModel.QD028');
        result = false;
      }
    } else {
      faltaDados.add('snisModel');
      result = false;
    }

    if (popModel != null) {
      if (year == 2020 && popModel.y2020 != null) {
        POP = popModel.y2020!;
      } else {
        faltaDados.add('popModel.y2020');
        result = false;
      }
    } else {
      faltaDados.add('popModel');
      result = false;
    }
    if (tModel != null) {
      if (year == 2020 && tModel.y2020 != null) {
        T = tModel.y2020!;
      } else {
        faltaDados.add('tModel.y2020');
        result = false;
      }
    } else {
      faltaDados.add('tModel');
      result = false;
    }
    if (anaModel != null) {
      if (anaModel.font != null) {
        font = anaModel.font!;
      } else {
        faltaDados.add('anaModel.font');
        result = false;
      }
    } else {
      faltaDados.add('anaModel');
      result = false;
    }
    // print('--- Analisando falta de dados');
    // print(faltaDados);
    return result;
  }

  //SNIS
  double AG012 = 0;

  double IN022_AE = 0;
  double IN023_AE = 0;
  double IN049_AE = 0;

  double QD006 = 0;
  double QD007 = 0;
  double QD008 = 0;
  double QD009 = 0;
  double QD019 = 0;
  double QD020 = 0;
  double QD026 = 0;
  double QD027 = 0;
  double QD028 = 0;

  //POP
  double POP = 0;
  //
  double IN049_5 =
      35.37; //constante veja em: https://docs.google.com/document/d/1awfVF5zT-ibJwU1d68UyitqF938_AGKfkcms5giil1o/edit#
  //T
  double T = 0;
  //Ana
  int font = 0;
}
