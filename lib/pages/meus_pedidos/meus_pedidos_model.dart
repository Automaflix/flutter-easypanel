import '/flutter_flow/flutter_flow_util.dart';
import 'meus_pedidos_widget.dart' show MeusPedidosWidget;
import 'package:flutter/material.dart';

class MeusPedidosModel extends FlutterFlowModel<MeusPedidosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
