import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start N oito N Group Code

class NOitoNGroup {
  static String baseUrl = 'https://n8n-cubo.webzoom.com.br';
  static Map<String, String> headers = {};
  static GetDadosUserCall getDadosUserCall = GetDadosUserCall();
  static CreateUserCall createUserCall = CreateUserCall();
  static PostLogoCall postLogoCall = PostLogoCall();
  static UpdateURLminhaLojaCall updateURLminhaLojaCall =
      UpdateURLminhaLojaCall();
}

class GetDadosUserCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getDadosUser',
      apiUrl: '${NOitoNGroup.baseUrl}/webhook/getDadosUser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cpf''',
      ));
  bool? lojista(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.lojista''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user''',
      ));
}

class CreateUserCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? nomeLoja = '',
    String? senha = '',
    String? dataCriacao = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${nome}",
  "email": "${email}",
  "nomeLoja": "${nomeLoja}",
  "senha": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUser',
      apiUrl: '${NOitoNGroup.baseUrl}/webhook/createuser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  String? nomeCompleto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nomeCompleto''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.username''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  bool? lojista(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.lojista''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  String? dataCriacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.dataCriacao''',
      ));
}

class PostLogoCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? image,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'postLogo',
      apiUrl: '${NOitoNGroup.baseUrl}/webhook/postLogo',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
        'token': token,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateURLminhaLojaCall {
  Future<ApiCallResponse> call({
    int? idUser,
    String? nomeURL = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "idUser": ${idUser},
  "nomeURL": "${nomeURL}",
  "token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateURLminhaLoja',
      apiUrl: '${NOitoNGroup.baseUrl}/webhook/updateURLminhaLoja',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End N oito N Group Code

/// Start Loja Group Code

class LojaGroup {
  static String baseUrl = 'https://dev.cubocommerce.com/api';
  static Map<String, String> headers = {};
  static CreateLojaCall createLojaCall = CreateLojaCall();
  static GetMinhaLojaCall getMinhaLojaCall = GetMinhaLojaCall();
  static UpdateMinhalojaCall updateMinhalojaCall = UpdateMinhalojaCall();
}

class CreateLojaCall {
  Future<ApiCallResponse> call({
    String? nomeLoja = '',
    String? token = '',
    String? dataCriacao = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nomeLoja": "${nomeLoja}",
  "dataCriacao": "${dataCriacao}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createLoja',
      apiUrl: '${LojaGroup.baseUrl}/minhaLoja:create',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? nomeLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nomeLoja''',
      ));
  String? dataCriacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.dataCriacao''',
      ));
}

class GetMinhaLojaCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMinhaLoja',
      apiUrl: '${LojaGroup.baseUrl}/minhaLoja:get',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? cratedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.createdAt''',
      ));
  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.createdById''',
      ));
  String? nomeLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nomeLoja''',
      ));
  String? descricaoLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.descricaoLoja''',
      ));
  String? telefoneLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.telefoneLoja''',
      ));
  String? instagramLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.instagramLoja''',
      ));
  String? emailLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.emailLoja''',
      ));
  String? endereco(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.endereco''',
      ));
  String? urlLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.urlLoja''',
      ));
  String? cnpjLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.cnpjLoja''',
      ));
  String? logoLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.logoLoja''',
      ));
  String? dataCriacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.dataCriacao''',
      ));
  String? corLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.corLoja''',
      ));
}

class UpdateMinhalojaCall {
  Future<ApiCallResponse> call({
    String? chave = '',
    String? token = '',
    String? valor = '',
  }) async {
    final ffApiRequestBody = '''
{
  "${chave}": "${valor}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateMinhaloja',
      apiUrl: '${LojaGroup.baseUrl}/minhaLoja:update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Loja Group Code

/// Start Produtos Group Code

class ProdutosGroup {
  static String baseUrl = 'https://dev.cubocommerce.com/api';
  static Map<String, String> headers = {};
  static GetProdCall getProdCall = GetProdCall();
  static UpdateProdutoAtivoCall updateProdutoAtivoCall =
      UpdateProdutoAtivoCall();
}

class GetProdCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProd',
      apiUrl: '${ProdutosGroup.baseUrl}/produto:list?appends=categoriaProduto',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? codProduto(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].codProduto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descricaoProduto(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].descricaoProduto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idProduto(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? nomeProduto(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nomeProduto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? valorCusto(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].valorCusto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? valorPromocional(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].valorPromocional''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? valorVenda(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].valorVenda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? categoriaProdutoid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].categoriaProduto[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? categoriaProdutoNome(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].categoriaProduto[:].nomeCategoria''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? totalProdutos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.count''',
      ));
  List<bool>? ativo(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].ativo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class UpdateProdutoAtivoCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? chave = '',
    bool? valor,
    double? id,
  }) async {
    final ffApiRequestBody = '''
{
  "${chave}": ${valor}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProdutoAtivo',
      apiUrl: '${ProdutosGroup.baseUrl}/produto:update?filterByTk=${id}',
      callType: ApiCallType.POST,
      headers: {
        'authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Produtos Group Code

/// Start User Group Code

class UserGroup {
  static String baseUrl = 'https://dev.cubocommerce.com/api';
  static Map<String, String> headers = {};
  static GetUserCall getUserCall = GetUserCall();
  static LoginCall loginCall = LoginCall();
}

class GetUserCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl: '${UserGroup.baseUrl}/auth:check',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? nomeCompleto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nomeCompleto''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.username''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  String? dataCriacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.dataCriacao''',
      ));
  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.roles[:].rolesUsers.userId''',
      ));
  bool? lojista(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.lojista''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.phone''',
      ));
  String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.cpf''',
      ));
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${UserGroup.baseUrl}/auth:signIn',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.token''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.createdAt''',
      ));
  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.user.id''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.username''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.email''',
      ));
  bool? lojista(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.user.lojista''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.phone''',
      ));
  String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.cpf''',
      ));
  String? dataCriacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.dataCriacao''',
      ));
  String? nomeCompleto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.nomeCompleto''',
      ));
}

/// End User Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
