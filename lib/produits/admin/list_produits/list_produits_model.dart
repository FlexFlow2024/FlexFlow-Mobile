import '/flutter_flow/flutter_flow_util.dart';
import 'list_produits_widget.dart' show ListProduitsWidget;
import 'package:flutter/material.dart';

class ListProduitsModel extends FlutterFlowModel<ListProduitsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
