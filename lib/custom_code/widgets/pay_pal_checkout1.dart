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

import 'package:flutter_paypal_checkout/flutter_paypal_checkout.dart';

class PayPalCheckout1 extends StatelessWidget {
  const PayPalCheckout1({
    Key? key,
    this.width,
    this.height,
    required this.amount,
    required this.currencyname,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String amount;
  final String currencyname;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => PaypalCheckout(
              sandboxMode: true,
              clientId:
                  "AbNidbaBqhsN8mk6f7qleHxVa5mP78eHK2BwuNbws-TtqiT-tQNwQGYhKpXcUgY4VpSYJu9EOKXuGRf9",
              secretKey:
                  "ELwfzPjhjKgNx43-zNuM9_Om42kwYelzG_fIR37yb9-IgA--_-ow6jJyfO461xYK8mac574rxHT2HVew",
              returnURL: "success.snippetcoder.com",
              cancelURL: "cancel.snippetcoder.com",
              transactions: [
                {
                  "amount": {
                    "total": amount,
                    "currency": currencyname,
                    "details": {
                      "subtotal": '70',
                      "shipping": '0',
                      "shipping_discount": 0
                    }
                  },
                  "description": "The payment transaction description.",
                  // "payment_options": {
                  //   "allowed_payment_method":
                  //       "INSTANT_FUNDING_SOURCE"
                  // },
                  "item_list": {
                    "items": [
                      {
                        "name": "Apple",
                        "quantity": 4,
                        "price": '5',
                        "currency": "USD"
                      },
                      {
                        "name": "Pineapple",
                        "quantity": 5,
                        "price": '10',
                        "currency": "USD"
                      }
                    ],
                  }
                }
              ],
              note: "Contact us for any questions on your order.",
              onSuccess: (Map params) async {
                print("onSuccess: $params");
              },
              onError: (error) {
                print("onError: $error");
                Navigator.pop(context);
              },
              onCancel: () {
                print('cancelled:');
              },
            ),
          ));
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(1),
            ),
          ),
        ),
        child: const Text('Checkout'),
      ),
    );
  }
}
