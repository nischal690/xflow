import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/lowwallet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'receiver_profile_widget.dart' show ReceiverProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shake/shake.dart';

class ReceiverProfileModel extends FlutterFlowModel<ReceiverProfileWidget> {
  ///  Local state fields for this page.

  bool showinfo = false;

  bool tpin = false;

  String amount = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for thailandtextfield widget.
  FocusNode? thailandtextfieldFocusNode;
  TextEditingController? thailandtextfieldController;
  String? Function(BuildContext, String?)? thailandtextfieldControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController1;
  String? Function(BuildContext, String?)? pinCodeController1Validator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController2;
  String? Function(BuildContext, String?)? pinCodeController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pinCodeController1 = TextEditingController();
    pinCodeController2 = TextEditingController();
  }

  void dispose() {
    unfocusNode.dispose();
    thailandtextfieldFocusNode?.dispose();
    thailandtextfieldController?.dispose();

    pinCodeController1?.dispose();
    pinCodeController2?.dispose();
    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
