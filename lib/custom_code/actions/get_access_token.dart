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

import 'package:http/http.dart';
import 'package:http_auth/http_auth.dart';
import "dart:convert" as convert;

Future<String> getAccessToken() async {
  // Add your function code here!
  String domain = "https://api.sandbox.paypal.com";
  String clientId =
      "AbNidbaBqhsN8mk6f7qleHxVa5mP78eHK2BwuNbws-TtqiT-tQNwQGYhKpXcUgY4VpSYJu9EOKXuGRf9";
  String secret =
      "ELwfzPjhjKgNx43-zNuM9_Om42kwYelzG_fIR37yb9-IgA--_-ow6jJyfO461xYK8mac574rxHT2HVew";
  try {
    var client = BasicAuthClient(clientId, secret);
    var response = await client.post(
        Uri.parse('$domain/v1/oauth2/token?grant_type=client_credentials'));
    if (response.statusCode == 200) {
      final body = convert.jsonDecode(response.body);
      return body["access_token"];
    }
    return "0";
  } catch (e) {
    rethrow;
  }
}
