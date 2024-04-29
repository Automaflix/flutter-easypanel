import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhes_cliente_widget.dart' show DetalhesClienteWidget;
import 'package:flutter/material.dart';

class DetalhesClienteModel extends FlutterFlowModel<DetalhesClienteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for nomeLoja widget.
  FocusNode? nomeLojaFocusNode1;
  TextEditingController? nomeLojaTextController1;
  String? Function(BuildContext, String?)? nomeLojaTextController1Validator;
  // State field(s) for cnpjLoja widget.
  FocusNode? cnpjLojaFocusNode1;
  TextEditingController? cnpjLojaTextController1;
  String? Function(BuildContext, String?)? cnpjLojaTextController1Validator;
  // State field(s) for descricaoLoja widget.
  FocusNode? descricaoLojaFocusNode;
  TextEditingController? descricaoLojaTextController;
  String? Function(BuildContext, String?)? descricaoLojaTextControllerValidator;
  // State field(s) for nomeLoja widget.
  FocusNode? nomeLojaFocusNode2;
  TextEditingController? nomeLojaTextController2;
  String? Function(BuildContext, String?)? nomeLojaTextController2Validator;
  // State field(s) for cnpjLoja widget.
  FocusNode? cnpjLojaFocusNode2;
  TextEditingController? cnpjLojaTextController2;
  String? Function(BuildContext, String?)? cnpjLojaTextController2Validator;
  // State field(s) for ruaEndLoja widget.
  FocusNode? ruaEndLojaFocusNode;
  TextEditingController? ruaEndLojaTextController;
  String? Function(BuildContext, String?)? ruaEndLojaTextControllerValidator;
  // State field(s) for numeroEndLoja widget.
  FocusNode? numeroEndLojaFocusNode;
  TextEditingController? numeroEndLojaTextController;
  String? Function(BuildContext, String?)? numeroEndLojaTextControllerValidator;
  // State field(s) for bairroEndLoja widget.
  FocusNode? bairroEndLojaFocusNode;
  TextEditingController? bairroEndLojaTextController;
  String? Function(BuildContext, String?)? bairroEndLojaTextControllerValidator;
  // State field(s) for cidadeEndLoja widget.
  FocusNode? cidadeEndLojaFocusNode;
  TextEditingController? cidadeEndLojaTextController;
  String? Function(BuildContext, String?)? cidadeEndLojaTextControllerValidator;
  // State field(s) for estadoEndLoja widget.
  FocusNode? estadoEndLojaFocusNode;
  TextEditingController? estadoEndLojaTextController;
  String? Function(BuildContext, String?)? estadoEndLojaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    nomeLojaFocusNode1?.dispose();
    nomeLojaTextController1?.dispose();

    cnpjLojaFocusNode1?.dispose();
    cnpjLojaTextController1?.dispose();

    descricaoLojaFocusNode?.dispose();
    descricaoLojaTextController?.dispose();

    nomeLojaFocusNode2?.dispose();
    nomeLojaTextController2?.dispose();

    cnpjLojaFocusNode2?.dispose();
    cnpjLojaTextController2?.dispose();

    ruaEndLojaFocusNode?.dispose();
    ruaEndLojaTextController?.dispose();

    numeroEndLojaFocusNode?.dispose();
    numeroEndLojaTextController?.dispose();

    bairroEndLojaFocusNode?.dispose();
    bairroEndLojaTextController?.dispose();

    cidadeEndLojaFocusNode?.dispose();
    cidadeEndLojaTextController?.dispose();

    estadoEndLojaFocusNode?.dispose();
    estadoEndLojaTextController?.dispose();
  }
}
