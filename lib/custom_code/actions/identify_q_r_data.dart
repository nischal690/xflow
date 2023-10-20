// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> identifyQRData(String qrData) async {
  await Future.delayed(Duration(seconds: 1));

  if (qrData.startsWith("000201")) {
    return "PromptPay";
  } else if (qrData.startsWith("upi://")) {
    return "UPI ID";
  } else {
    return "Unknown";
  }
}
