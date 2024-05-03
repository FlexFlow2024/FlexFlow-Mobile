import '/flutter_flow/flutter_flow_util.dart';
import 'favourite_widget.dart' show FavouriteWidget;
import 'package:flutter/material.dart';

class FavouriteModel extends FlutterFlowModel<FavouriteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
