import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          params: parameterData.params,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Center(
            child: Image.asset(
              'assets/images/Splash_screen_(2).png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get params => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'History': ParameterData.none(),
  'Notification': ParameterData.none(),
  'Paybyphone': ParameterData.none(),
  'Wallet': ParameterData.none(),
  'fdgdfgs': ParameterData.none(),
  'Receiverprofile': (data) async => ParameterData(
        allParams: {
          'upiID': getParameter<String>(data, 'upiID'),
          'name': getParameter<String>(data, 'name'),
        },
      ),
  'Setting': ParameterData.none(),
  'Transact': ParameterData.none(),
  'OTPverificationlogin': ParameterData.none(),
  'Register': ParameterData.none(),
  'HomePage': ParameterData.none(),
  'landingscreen2': ParameterData.none(),
  'OTPverification': ParameterData.none(),
  'createyourprofile2': ParameterData.none(),
  'login': ParameterData.none(),
  'createyourprofile2Continue': ParameterData.none(),
  'createyourprofile4': ParameterData.none(),
  'createyourprofile3': ParameterData.none(),
  'CountrySelector': ParameterData.none(),
  'createyourprofile': ParameterData.none(),
  'Discover': ParameterData.none(),
  'Community': ParameterData.none(),
  'addPost': (data) async => ParameterData(
        allParams: {
          'upiID': getParameter<String>(data, 'upiID'),
          'name': getParameter<String>(data, 'name'),
        },
      ),
  'CountrySelector2': ParameterData.none(),
  'profile': (data) async => ParameterData(
        allParams: {
          'profileRef': getParameter<DocumentReference>(data, 'profileRef'),
        },
      ),
  'aiChat': ParameterData.none(),
  'Postdetails': (data) async => ParameterData(
        allParams: {
          'userpostref': getParameter<DocumentReference>(data, 'userpostref'),
        },
      ),
  'verfyingastravellers': ParameterData.none(),
  'editProfile': ParameterData.none(),
  'fddvm': (data) async => ParameterData(
        allParams: {
          'currency': getParameter<String>(data, 'currency'),
          'currencyname': getParameter<String>(data, 'currencyname'),
        },
      ),
  'WalletCopy': ParameterData.none(),
  'fddvmCopy': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
