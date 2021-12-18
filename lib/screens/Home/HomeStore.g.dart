// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.9

part of 'HomeStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$instrumentsArrAtom = Atom(name: '_HomeStore.instrumentsArr');

  @override
  List<dynamic> get instrumentsArr {
    _$instrumentsArrAtom.reportRead();
    return super.instrumentsArr;
  }

  @override
  set instrumentsArr(List<dynamic> value) {
    _$instrumentsArrAtom.reportWrite(value, super.instrumentsArr, () {
      super.instrumentsArr = value;
    });
  }

  final _$resultInstrumentsArrAtom =
      Atom(name: '_HomeStore.resultInstrumentsArr');

  @override
  List<dynamic> get resultInstrumentsArr {
    _$resultInstrumentsArrAtom.reportRead();
    return super.resultInstrumentsArr;
  }

  @override
  set resultInstrumentsArr(List<dynamic> value) {
    _$resultInstrumentsArrAtom.reportWrite(value, super.resultInstrumentsArr,
        () {
      super.resultInstrumentsArr = value;
    });
  }

  final _$searchAtom = Atom(name: '_HomeStore.search');

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$initArrAsyncAction = AsyncAction('_HomeStore.initArr');

  @override
  Future<dynamic> initArr() {
    return _$initArrAsyncAction.run(() => super.initArr());
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  dynamic setSearch(dynamic value) {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.setSearch');
    try {
      return super.setSearch(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
instrumentsArr: ${instrumentsArr},
resultInstrumentsArr: ${resultInstrumentsArr},
search: ${search}
    ''';
  }
}
