import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/select_country_widget.dart';
import '/components/set_pin_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'navbar_widget.dart' show NavbarWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavbarModel extends FlutterFlowModel<NavbarWidget> {
  ///  State fields for stateful widgets in this component.

  var qrData0 = '';
  // Stores action output result for [Custom Action - identifyQRData] action in Column widget.
  String? na0;
  // Stores action output result for [Backend Call - Create Document] action in Column widget.
  TransactionHistoryRecord? transaction0;
  // Stores action output result for [Backend Call - Create Document] action in Column widget.
  TransactionHistoryRecord? transaction3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
