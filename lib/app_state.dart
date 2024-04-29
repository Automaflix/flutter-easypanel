import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
  set dadosUser(DadosUserStruct _value) {
    _dadosUser = _value;
  }

  void updateDadosUserStruct(Function(DadosUserStruct) updateFn) {
    updateFn(_dadosUser);
  }

  DadosLojaStruct _dadosLoja = DadosLojaStruct();
  DadosLojaStruct get dadosLoja => _dadosLoja;
  set dadosLoja(DadosLojaStruct _value) {
    _dadosLoja = _value;
  }

  void updateDadosLojaStruct(Function(DadosLojaStruct) updateFn) {
    updateFn(_dadosLoja);
  }
}
