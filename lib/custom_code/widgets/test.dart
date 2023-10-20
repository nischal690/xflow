// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_paypal_native/flutter_paypal_native.dart';
import 'package:flutter_paypal_native/flutter_paypal_native.dart';
import 'package:flutter_paypal_native/models/custom/currency_code.dart';
import 'package:flutter_paypal_native/models/custom/environment.dart';
import 'package:flutter_paypal_native/str_helper.dart';
import 'package:flutter_paypal_native/models/custom/purchase_unit.dart';
import 'package:flutter_paypal_native/models/custom/user_action.dart';
import 'package:flutter_paypal_native/models/custom/order_callback.dart';
import 'dart:math';

class Test extends StatefulWidget {
  const Test({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final _flutterPaypalNativePlugin = FlutterPaypalNative.instance;
  // log queue
  List<String> logQueue = [];

  @override
  void initState() {
    super.initState();

    initPayPal();
  }

  void initPayPal() async {
    //set debugMode for error logging
    FlutterPaypalNative.isDebugMode = true;

    //initiate payPal plugin
    await _flutterPaypalNativePlugin.init(
      //your app id !!! No Underscore!!! see readme.md for help
      returnUrl: "com.piccmaq.flutter.paypal.native.example://paypalpay",
      //client id from developer dashboard
      clientID:
          "AbNidbaBqhsN8mk6f7qleHxVa5mP78eHK2BwuNbws-TtqiT-tQNwQGYhKpXcUgY4VpSYJu9EOKXuGRf9",
      //sandbox, staging, live etc
      payPalEnvironment: FPayPalEnvironment.sandbox,
      //what currency do you plan to use? default is US dollars
      currencyCode: FPayPalCurrencyCode.usd,
      //action paynow?
      action: FPayPalUserAction.payNow,
    );
    _flutterPaypalNativePlugin.setPayPalOrderCallback(
      callback: FPayPalOrderCallback(
        onCancel: () {
          //user canceled the payment
          showResult("cancel");
        },
        onSuccess: (data) {
          //successfully paid
          //remove all items from queue
          _flutterPaypalNativePlugin.removeAllPurchaseItems();
          String visitor = data.cart?.shippingAddress?.firstName ?? 'Visitor';
          String address =
              data.cart?.shippingAddress?.line1 ?? 'Unknown Address';
          showResult(
            "Order successful ${data.payerId ?? ""} - ${data.orderId ?? ""} - $visitor -$address",
          );
        },
        onError: (data) {
          //an error occured
          showResult("error: ${data.reason}");
        },
        onShippingChange: (data) {
          //the user updated the shipping address
          showResult(
            "shipping change: ${data.shippingChangeAddress?.adminArea1 ?? ""}",
          );
        },
      ),
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              for (String t in logQueue) Text(t),
              ElevatedButton(
                child: const Text("Do payment"),
                onPressed: () {
                  //add 1 item to cart. Max is 4!
                  if (_flutterPaypalNativePlugin.canAddMorePurchaseUnit) {
                    _flutterPaypalNativePlugin.addPurchaseUnit(
                      FPayPalPurchaseUnit(
                        // random prices
                        amount: Random().nextDouble() * 100,

                        ///please use your own algorithm for referenceId. Maybe ProductID?
                        referenceId: FPayPalStrHelper.getRandomString(16),
                      ),
                    );
                  }
                  // initPayPal();
                  _flutterPaypalNativePlugin.makeOrder(
                    action: FPayPalUserAction.payNow,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

// all to log queue
  showResult(String text) {
    logQueue.add(text);
    setState(() {});
  }
}
