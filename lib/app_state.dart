import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DadosUserStruct _dadosUser = DadosUserStruct();
  DadosUserStruct get dadosUser => _dadosUser;
  set dadosUser(DadosUserStruct value) {
    _dadosUser = value;
  }

  void updateDadosUserStruct(Function(DadosUserStruct) updateFn) {
    updateFn(_dadosUser);
  }

  DadosLojaStruct _dadosLoja = DadosLojaStruct();
  DadosLojaStruct get dadosLoja => _dadosLoja;
  set dadosLoja(DadosLojaStruct value) {
    _dadosLoja = value;
  }

  void updateDadosLojaStruct(Function(DadosLojaStruct) updateFn) {
    updateFn(_dadosLoja);
  }
}
