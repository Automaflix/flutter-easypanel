// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosLojaStruct extends BaseStruct {
  DadosLojaStruct({
    String? updateLogo,
    String? logoURL,
    String? corLoja,
  })  : _updateLogo = updateLogo,
        _logoURL = logoURL,
        _corLoja = corLoja;

  // "updateLogo" field.
  String? _updateLogo;
  String get updateLogo => _updateLogo ?? '';
  set updateLogo(String? val) => _updateLogo = val;
  bool hasUpdateLogo() => _updateLogo != null;

  // "logoURL" field.
  String? _logoURL;
  String get logoURL => _logoURL ?? '';
  set logoURL(String? val) => _logoURL = val;
  bool hasLogoURL() => _logoURL != null;

  // "corLoja" field.
  String? _corLoja;
  String get corLoja => _corLoja ?? '';
  set corLoja(String? val) => _corLoja = val;
  bool hasCorLoja() => _corLoja != null;

  static DadosLojaStruct fromMap(Map<String, dynamic> data) => DadosLojaStruct(
        updateLogo: data['updateLogo'] as String?,
        logoURL: data['logoURL'] as String?,
        corLoja: data['corLoja'] as String?,
      );

  static DadosLojaStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosLojaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'updateLogo': _updateLogo,
        'logoURL': _logoURL,
        'corLoja': _corLoja,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'updateLogo': serializeParam(
          _updateLogo,
          ParamType.String,
        ),
        'logoURL': serializeParam(
          _logoURL,
          ParamType.String,
        ),
        'corLoja': serializeParam(
          _corLoja,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosLojaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosLojaStruct(
        updateLogo: deserializeParam(
          data['updateLogo'],
          ParamType.String,
          false,
        ),
        logoURL: deserializeParam(
          data['logoURL'],
          ParamType.String,
          false,
        ),
        corLoja: deserializeParam(
          data['corLoja'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosLojaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosLojaStruct &&
        updateLogo == other.updateLogo &&
        logoURL == other.logoURL &&
        corLoja == other.corLoja;
  }

  @override
  int get hashCode => const ListEquality().hash([updateLogo, logoURL, corLoja]);
}

DadosLojaStruct createDadosLojaStruct({
  String? updateLogo,
  String? logoURL,
  String? corLoja,
}) =>
    DadosLojaStruct(
      updateLogo: updateLogo,
      logoURL: logoURL,
      corLoja: corLoja,
    );
