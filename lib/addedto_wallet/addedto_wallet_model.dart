import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'addedto_wallet_widget.dart' show AddedtoWalletWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddedtoWalletModel extends FlutterFlowModel<AddedtoWalletWidget> {
  ///  Local state fields for this page.

  bool addMoney = false;

  bool updated = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (stripepayment intent)] action in addedtoWallet widget.
  ApiCallResponse? apiResultq8a;
  // Stores action output result for [Backend Call - API (stripe get transaction id)] action in addedtoWallet widget.
  ApiCallResponse? apiResultzv9;
  // Stores action output result for [Backend Call - API (stripe get transaction details)] action in addedtoWallet widget.
  ApiCallResponse? apiResult7he;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
