import '/flutter_flow/flutter_flow_util.dart';
import 'ajout_widget.dart' show AjoutWidget;
import 'package:flutter/material.dart';

class AjoutModel extends FlutterFlowModel<AjoutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  String? _nomTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'nom is required';
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'description is required';
    }

    return null;
  }

  // State field(s) for prix widget.
  FocusNode? prixFocusNode;
  TextEditingController? prixTextController;
  String? Function(BuildContext, String?)? prixTextControllerValidator;
  String? _prixTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'prix is required';
    }

    return null;
  }

  // State field(s) for quantite widget.
  FocusNode? quantiteFocusNode;
  TextEditingController? quantiteTextController;
  String? Function(BuildContext, String?)? quantiteTextControllerValidator;
  String? _quantiteTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'quantite is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    nomTextControllerValidator = _nomTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    prixTextControllerValidator = _prixTextControllerValidator;
    quantiteTextControllerValidator = _quantiteTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomFocusNode?.dispose();
    nomTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    prixFocusNode?.dispose();
    prixTextController?.dispose();

    quantiteFocusNode?.dispose();
    quantiteTextController?.dispose();
  }
}
