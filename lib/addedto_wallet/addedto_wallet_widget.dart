import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'addedto_wallet_model.dart';
export 'addedto_wallet_model.dart';

class AddedtoWalletWidget extends StatefulWidget {
  const AddedtoWalletWidget({
    Key? key,
    required this.amount,
    required this.currency,
    this.transactionid,
  }) : super(key: key);

  final String? amount;
  final String? currency;
  final String? transactionid;

  @override
  _AddedtoWalletWidgetState createState() => _AddedtoWalletWidgetState();
}

class _AddedtoWalletWidgetState extends State<AddedtoWalletWidget> {
  late AddedtoWalletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddedtoWalletModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'addedtoWallet'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADDEDTO_WALLET_addedtoWallet_ON_INIT_STA');
      logFirebaseEvent('addedtoWallet_backend_call');
      _model.apiResultq8a = await StripepaymentIntentCall.call(
        transactionid: widget.transactionid,
      );
      if ((_model.apiResultq8a?.succeeded ?? true)) {
        logFirebaseEvent('addedtoWallet_backend_call');
        _model.apiResultzv9 = await StripeGetTransactionIdCall.call(
          chargeid: StripepaymentIntentCall.getcharge(
            (_model.apiResultq8a?.jsonBody ?? ''),
          ).toString().toString(),
        );
        if ((_model.apiResultzv9?.succeeded ?? true)) {
          logFirebaseEvent('addedtoWallet_backend_call');
          _model.apiResult7he = await StripeGetTransactionDetailsCall.call(
            transactionid: StripeGetTransactionIdCall.transactionid(
              (_model.apiResultzv9?.jsonBody ?? ''),
            ).toString().toString(),
          );
          if ((_model.apiResult7he?.succeeded ?? true)) {
            logFirebaseEvent('addedtoWallet_backend_call');

            await currentUserReference!.update(createUsersRecordData(
              balanceinTHB: functions.addthb(
                  valueOrDefault(currentUserDocument?.balanceinTHB, 0),
                  StripeGetTransactionDetailsCall.netamount(
                    (_model.apiResult7he?.jsonBody ?? ''),
                  )),
              currencyselected: widget.currency,
              balanceinCurrency: valueOrDefault<String>(
                functions.updatebalance(
                    valueOrDefault<String>(
                      valueOrDefault(
                          currentUserDocument?.balanceinCurrency, ''),
                      '0',
                    ),
                    widget.amount!),
                '0',
              ),
            ));
            logFirebaseEvent('addedtoWallet_backend_call');

            await currentUserReference!.update(createUsersRecordData(
              conversionrate: functions.compareconversionrate(
                  valueOrDefault<double>(
                    valueOrDefault(currentUserDocument?.conversionrate, 0.0),
                    0.0,
                  ),
                  valueOrDefault<double>(
                    functions.conversionrate(
                        valueOrDefault(currentUserDocument?.balanceinTHB, 0),
                        valueOrDefault(
                            currentUserDocument?.balanceinCurrency, '')),
                    0.0,
                  )),
            ));
          } else {
            logFirebaseEvent('addedtoWallet_navigate_to');

            context.pushNamed('Wallet');
          }
        } else {
          logFirebaseEvent('addedtoWallet_navigate_to');

          context.pushNamed('Wallet');
        }
      } else {
        logFirebaseEvent('addedtoWallet_navigate_to');

        context.pushNamed('Wallet');
      }
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
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x0D000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent(
                        'ADDEDTO_WALLET_PAGE_Icon_j4xym4v7_ON_TAP');
                    logFirebaseEvent('Icon_navigate_back');
                    context.safePop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Color(0xFF101213),
                    size: 24.0,
                  ),
                ),
              ),
              Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x0D000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Icon(
                  FFIcons.knotificationBing,
                  color: Color(0xFF101213),
                  size: 24.0,
                ),
              ),
            ],
          ),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                    Container(
                      height: 310.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.asset(
                                  'assets/images/verify.png',
                                ).image,
                              ),
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              '${() {
                                if (widget.currency == 'USD') {
                                  return '\$';
                                } else if (widget.currency == 'EUR') {
                                  return '€';
                                } else {
                                  return '₹';
                                }
                              }()}${widget.amount}',
                              '\$250.00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: Color(0xFF1A1C26),
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.2,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF3CB728),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.task_alt,
                                        color: Colors.white,
                                        size: 23.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              RichText(
                                textScaleFactor:
                                    MediaQuery.of(context).textScaleFactor,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: ' Successfully ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: Color(0xFF3CB728),
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.2,
                                          ),
                                    ),
                                    TextSpan(
                                      text: 'Added to',
                                      style: GoogleFonts.getFont(
                                        'Nunito',
                                        color: Color(0xFF1A1C26),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.0,
                                        height: 1.2,
                                      ),
                                    )
                                  ],
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Wallet',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.2,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dateTimeFormat(
                                'yMMMd',
                                getCurrentTimestamp,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFF53555C),
                                    lineHeight: 1.2,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                dateTimeFormat(
                                  'jm',
                                  getCurrentTimestamp,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFF53555C),
                                      lineHeight: 1.2,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADDEDTO_WALLET_Container_crmvs9er_ON_TAP');
                                logFirebaseEvent('Container_navigate_to');

                                context.goNamed('HomePage');
                              },
                              child: Container(
                                width: 152.0,
                                height: 52.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Color(0xFF53555C),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Text(
                                    'Okay, Got It',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF1A1C26),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.2,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
