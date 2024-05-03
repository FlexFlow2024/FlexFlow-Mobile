import '/flutter_flow/flutter_flow_util.dart';
import 'admin_client_widget.dart' show AdminClientWidget;
import 'package:flutter/material.dart';

class AdminClientModel extends FlutterFlowModel<AdminClientWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
