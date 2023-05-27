import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_comment_widget.dart';
import '/components/userpost_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostdetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for userpost component.
  late UserpostModel userpostModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userpostModel = createModel(context, () => UserpostModel());
  }

  void dispose() {
    userpostModel.dispose();
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
