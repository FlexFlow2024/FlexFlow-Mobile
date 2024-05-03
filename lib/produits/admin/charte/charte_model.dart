import '/flutter_flow/flutter_flow_util.dart';
import 'charte_widget.dart' show CharteWidget;
import 'package:flutter/material.dart';

class CharteModel extends FlutterFlowModel<CharteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
