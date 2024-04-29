import '/backend/api_requests/api_calls.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'minha_loja_widget.dart' show MinhaLojaWidget;
import 'package:flutter/material.dart';

class MinhaLojaModel extends FlutterFlowModel<MinhaLojaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getMinhaLoja)] action in MinhaLoja widget.
  ApiCallResponse? getLoja;
  // Model for webNav component.
  late WebNavModel webNavModel1;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for urlLoja widget.
  FocusNode? urlLojaFocusNode;
  TextEditingController? urlLojaTextController;
  String? Function(BuildContext, String?)? urlLojaTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateMinhaloja)] action in Button widget.
  ApiCallResponse? updatecor;
  // Stores action output result for [Backend Call - API (updateURLminhaLoja)] action in Button widget.
  ApiCallResponse? updateURLminhaLoja;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (postLogo)] action in Button widget.
  ApiCallResponse? uploadLogo;
  // State field(s) for cnpjLoja widget.
  FocusNode? cnpjLojaFocusNode;
  TextEditingController? cnpjLojaTextController;
  String? Function(BuildContext, String?)? cnpjLojaTextControllerValidator;
  // State field(s) for nomeLoja widget.
  FocusNode? nomeLojaFocusNode;
  TextEditingController? nomeLojaTextController;
  String? Function(BuildContext, String?)? nomeLojaTextControllerValidator;
  // State field(s) for descricaoLoja widget.
  FocusNode? descricaoLojaFocusNode;
  TextEditingController? descricaoLojaTextController;
  String? Function(BuildContext, String?)? descricaoLojaTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateMinhaloja)] action in Button widget.
  ApiCallResponse? updateCnpjLoja;
  // Stores action output result for [Backend Call - API (updateMinhaloja)] action in Button widget.
  ApiCallResponse? updateNomeLoja;
  // Stores action output result for [Backend Call - API (updateMinhaloja)] action in Button widget.
  ApiCallResponse? updateDescricao;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateMinhaloja)] action in Button widget.
  ApiCallResponse? updateEndereco;
  // State field(s) for telefoneLoja widget.
  FocusNode? telefoneLojaFocusNode;
  TextEditingController? telefoneLojaTextController;
  String? Function(BuildContext, String?)? telefoneLojaTextControllerValidator;
  // State field(s) for instagramLoja widget.
  FocusNode? instagramLojaFocusNode;
  TextEditingController? instagramLojaTextController;
  String? Function(BuildContext, String?)? instagramLojaTextControllerValidator;
  // State field(s) for emailLoja widget.
  FocusNode? emailLojaFocusNode;
  TextEditingController? emailLojaTextController;
  String? Function(BuildContext, String?)? emailLojaTextControllerValidator;
  // State field(s) for responsavelNomeCompletoLoja widget.
  FocusNode? responsavelNomeCompletoLojaFocusNode;
  TextEditingController? responsavelNomeCompletoLojaTextController;
  String? Function(BuildContext, String?)?
      responsavelNomeCompletoLojaTextControllerValidator;
  // State field(s) for responsavelCpfLoja widget.
  FocusNode? responsavelCpfLojaFocusNode;
  TextEditingController? responsavelCpfLojaTextController;
  String? Function(BuildContext, String?)?
      responsavelCpfLojaTextControllerValidator;
  // Model for webNav component.
  late WebNavModel webNavModel2;

  @override
  void initState(BuildContext context) {
    webNavModel1 = createModel(context, () => WebNavModel());
    webNavModel2 = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel1.dispose();
    tabBarController?.dispose();
    urlLojaFocusNode?.dispose();
    urlLojaTextController?.dispose();

    cnpjLojaFocusNode?.dispose();
    cnpjLojaTextController?.dispose();

    nomeLojaFocusNode?.dispose();
    nomeLojaTextController?.dispose();

    descricaoLojaFocusNode?.dispose();
    descricaoLojaTextController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoTextController?.dispose();

    telefoneLojaFocusNode?.dispose();
    telefoneLojaTextController?.dispose();

    instagramLojaFocusNode?.dispose();
    instagramLojaTextController?.dispose();

    emailLojaFocusNode?.dispose();
    emailLojaTextController?.dispose();

    responsavelNomeCompletoLojaFocusNode?.dispose();
    responsavelNomeCompletoLojaTextController?.dispose();

    responsavelCpfLojaFocusNode?.dispose();
    responsavelCpfLojaTextController?.dispose();

    webNavModel2.dispose();
  }
}
