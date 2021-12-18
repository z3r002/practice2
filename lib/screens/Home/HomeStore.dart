// @dart=2.9

// ignore_for_file: file_names

import 'dart:convert';

import 'package:mobx/mobx.dart';

import '../../mockdata.dart';

part 'HomeStore.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {

  @observable
  var instrumentsArr = [];

  @observable
  var resultInstrumentsArr = [];

  @observable
  var search = '';

  @action
  setSearch(value)  {
    search = value;
    kek(value);
  }

  @action
  kek(value){
    instrumentsArr =  instrumentsArr.where((element) => element['name'] == value);
  }


  @action
  Future initArr() async {
    try {
      instrumentsArr = instruments ;


    } catch (e) {
      print(e);
    }
  }

}