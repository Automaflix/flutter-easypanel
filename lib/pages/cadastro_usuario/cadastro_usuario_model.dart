import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_usuario_widget.dart' show CadastroUsuarioWidget;
import 'package:flutter/material.dart';

class CadastroUsuarioModel extends FlutterFlowModel<CadastroUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroTextController;
  String? Function(BuildContext, String?)? emailCadastroTextControllerValidator;
  // State field(s) for nomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  // State field(s) for nomeLoja widget.
  FocusNode? nomeLojaFocusNode;
  TextEditingController? nomeLojaTextController;
  String? Function(BuildContext, String?)? nomeLojaTextControllerValidator;
  // State field(s) for senhaCadastro widget.
  FocusNode? senhaCadastroFocusNode;
  TextEditingController? senhaCadastroTextController;
  late bool senhaCadastroVisibility;
  String? Function(BuildContext, String?)? senhaCadastroTextControllerValidator;
  // Stores action output result for [Backend Call - API (createUser)] action in Button-Login widget.
  ApiCallResponse? createUser;
  // Stores action output result for [Backend Call - API (login)] action in Button-Login widget.
  ApiCallResponse? createLogin;
  // Stores action output result for [Backend Call - API (createLoja)] action in Button-Login widget.
  ApiCallResponse? createLoja;

  @override
  void initState(BuildContext context) {
    senhaCadastroVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailCadastroFocusNode?.dispose();
    emailCadastroTextController?.dispose();

    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    nomeLojaFocusNode?.dispose();
    nomeLojaTextController?.dispose();

    senhaCadastroFocusNode?.dispose();
    senhaCadastroTextController?.dispose();
  }
}
