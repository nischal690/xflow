import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'loading_model.dart';
export 'loading_model.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({
    Key? key,
    required this.transaction,
    required this.amount,
  }) : super(key: key);

  final TransactionHistoryRecord? transaction;
  final String? amount;

  @override
  _LoadingWidgetState createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  late LoadingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'loading'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LOADING_PAGE_loading_ON_INIT_STATE');
      logFirebaseEvent('loading_wait__delay');
      await Future.delayed(const Duration(milliseconds: 4000));
      logFirebaseEvent('loading_backend_call');

      await currentUserReference!.update(createUsersRecordData(
        balanceinTHB: valueOrDefault<int>(
          functions.updatethbbalance(
              valueOrDefault(currentUserDocument?.balanceinTHB, 0),
              valueOrDefault<String>(
                widget.transaction?.amount,
                '100',
              )),
          50,
        ),
        balanceinCurrency: valueOrDefault<String>(
          functions.updatebalanceincurrency(
              valueOrDefault(currentUserDocument?.conversionrate, 0.0),
              valueOrDefault(currentUserDocument?.balanceinCurrency, ''),
              valueOrDefault<String>(
                widget.transaction?.amount,
                '100',
              )),
          '500',
        ),
      ));
      logFirebaseEvent('loading_navigate_to');

      context.pushNamed(
        'paymentSuccessful',
        queryParameters: {
          'transactionid': serializeParam(
            widget.transaction?.reference,
            ParamType.DocumentReference,
          ),
        }.withoutNulls,
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0x004B39EF),
          automaticallyImplyLeading: false,
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(1.00, -1.40),
                child: Image.asset(
                  'assets/images/Ellipse_11.png',
                  width: 180.0,
                  height: 180.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.00, 0.00),
                child: Image.asset(
                  'assets/images/Ellipse_10.png',
                  width: 180.0,
                  height: 180.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.00, 1.19),
                child: Image.asset(
                  'assets/images/Ellipse_9.png',
                  width: 180.0,
                  height: 180.0,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        child: RiveAnimation.asset(
                          'assets/rive_animations/742-1498-loading_(1).riv',
                          artboard: 'New Artboard',
                          fit: BoxFit.cover,
                          controllers: _model.riveAnimationControllers,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
