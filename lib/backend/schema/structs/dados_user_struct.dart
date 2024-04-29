// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosUserStruct extends BaseStruct {
  DadosUserStruct({
    int? userId,
    bool? lojista,
    String? phone,
    String? cpf,
    String? username,
    String? nomeCompleto,
    String? email,
    String? dataCriacao,
  })  : _userId = userId,
        _lojista = lojista,
        _phone = phone,
        _cpf = cpf,
        _username = username,
        _nomeCompleto = nomeCompleto,
        _email = email,
        _dataCriacao = dataCriacao;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "lojista" field.
  bool? _lojista;
  bool get lojista => _lojista ?? false;
  set lojista(bool? val) => _lojista = val;
  bool hasLojista() => _lojista != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;
  bool hasCpf() => _cpf != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "nomeCompleto" field.
  String? _nomeCompleto;
  String get nomeCompleto => _nomeCompleto ?? '';
  set nomeCompleto(String? val) => _nomeCompleto = val;
  bool hasNomeCompleto() => _nomeCompleto != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "dataCriacao" field.
  String? _dataCriacao;
  String get dataCriacao => _dataCriacao ?? '';
  set dataCriacao(String? val) => _dataCriacao = val;
  bool hasDataCriacao() => _dataCriacao != null;

  static DadosUserStruct fromMap(Map<String, dynamic> data) => DadosUserStruct(
        userId: castToType<int>(data['userId']),
        lojista: data['lojista'] as bool?,
        phone: data['phone'] as String?,
        cpf: data['cpf'] as String?,
        username: data['username'] as String?,
        nomeCompleto: data['nomeCompleto'] as String?,
        email: data['email'] as String?,
        dataCriacao: data['dataCriacao'] as String?,
      );

  static DadosUserStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'lojista': _lojista,
        'phone': _phone,
        'cpf': _cpf,
        'username': _username,
        'nomeCompleto': _nomeCompleto,
        'email': _email,
        'dataCriacao': _dataCriacao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'lojista': serializeParam(
          _lojista,
          ParamType.bool,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'nomeCompleto': serializeParam(
          _nomeCompleto,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'dataCriacao': serializeParam(
          _dataCriacao,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosUserStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        lojista: deserializeParam(
          data['lojista'],
          ParamType.bool,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        nomeCompleto: deserializeParam(
          data['nomeCompleto'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        dataCriacao: deserializeParam(
          data['dataCriacao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosUserStruct &&
        userId == other.userId &&
        lojista == other.lojista &&
        phone == other.phone &&
        cpf == other.cpf &&
        username == other.username &&
        nomeCompleto == other.nomeCompleto &&
        email == other.email &&
        dataCriacao == other.dataCriacao;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userId,
        lojista,
        phone,
        cpf,
        username,
        nomeCompleto,
        email,
        dataCriacao
      ]);
}

DadosUserStruct createDadosUserStruct({
  int? userId,
  bool? lojista,
  String? phone,
  String? cpf,
  String? username,
  String? nomeCompleto,
  String? email,
  String? dataCriacao,
}) =>
    DadosUserStruct(
      userId: userId,
      lojista: lojista,
      phone: phone,
      cpf: cpf,
      username: username,
      nomeCompleto: nomeCompleto,
      email: email,
      dataCriacao: dataCriacao,
    );
