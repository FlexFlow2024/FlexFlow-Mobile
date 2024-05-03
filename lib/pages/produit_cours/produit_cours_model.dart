import '/flutter_flow/flutter_flow_util.dart';
import 'produit_cours_widget.dart' show ProduitCoursWidget;
import 'package:flutter/material.dart';

class ProduitCoursModel extends FlutterFlowModel<ProduitCoursWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
