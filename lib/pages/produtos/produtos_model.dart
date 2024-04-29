import '/backend/api_requests/api_calls.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'produtos_widget.dart' show ProdutosWidget;
import 'package:flutter/material.dart';

class ProdutosModel extends FlutterFlowModel<ProdutosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel1;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for Checkbox widget.

  Map<dynamic, bool> checkboxValueMap1 = {};
  List<dynamic> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Backend Call - API (updateProdutoAtivo)] action in Checkbox widget.
  ApiCallResponse? updateprodativoTrue;
  // Stores action output result for [Backend Call - API (updateProdutoAtivo)] action in Checkbox widget.
  ApiCallResponse? updateprodativoFalse;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for Checkbox widget.

  Map<dynamic, bool> checkboxValueMap2 = {};
  List<dynamic> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Backend Call - API (updateProdutoAtivo)] action in Checkbox widget.
  ApiCallResponse? updateprodativoOn;
  // Stores action output result for [Backend Call - API (updateProdutoAtivo)] action in Checkbox widget.
  ApiCallResponse? updateprodativoOff;
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
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    webNavModel2.dispose();
  }
}
