import '/flutter_flow/flutter_flow_util.dart';
import 'catalogo_virtual_widget.dart' show CatalogoVirtualWidget;
import 'package:flutter/material.dart';

class CatalogoVirtualModel extends FlutterFlowModel<CatalogoVirtualWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();

    columnController?.dispose();
    listViewController?.dispose();
  }
}
