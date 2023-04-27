// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> checkUserExistsByCriteria(
  String compareValue,
  String compareField,
) async {
  // Add your function code here
  print("userCheck: ${compareField} = ${compareValue}");

  bool output = await FirebaseFirestore.instance
      .collection('users')
      .where(compareField, isEqualTo: compareValue)
      .get()
      .then((value) => value.size > 0 ? true : false);
  print("userCheck: ${compareField} = ${compareValue} [${output}]");
  return output;
}
