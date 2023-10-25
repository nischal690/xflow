import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payment_successful_model.dart';
export 'payment_successful_model.dart';

class PaymentSuccessfulWidget extends StatefulWidget {
  const PaymentSuccessfulWidget({
    Key? key,
    required this.transactionid,
  }) : super(key: key);

  final DocumentReference? transactionid;

  @override
  _PaymentSuccessfulWidgetState createState() =>
      _PaymentSuccessfulWidgetState();
}

class _PaymentSuccessfulWidgetState extends State<PaymentSuccessfulWidget> {
  late PaymentSuccessfulModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentSuccessfulModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'paymentSuccessful'});
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

    return StreamBuilder<TransactionHistoryRecord>(
      stream: TransactionHistoryRecord.getDocument(widget.transactionid!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xEA000000),
                  ),
                ),
              ),
            ),
          );
        }
        final paymentSuccessfulTransactionHistoryRecord = snapshot.data!;
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
                            'PAYMENT_SUCCESSFUL_Icon_hv43yw9l_ON_TAP');
                        logFirebaseEvent('Icon_navigate_to');

                        context.goNamed('HomePage');
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [],
                        ),
                        Container(
                          height: 340.0,
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
                                  '฿ ${paymentSuccessfulTransactionHistoryRecord.amount}',
                                  '฿  0',
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
                                          text: 'Paid to',
                                          style: GoogleFonts.getFont(
                                            'Nunito',
                                            color: Color(0xFF1A1C26),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20.0,
                                            height: 1.2,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                              if ((paymentSuccessfulTransactionHistoryRecord
                                              .walletID !=
                                          null &&
                                      paymentSuccessfulTransactionHistoryRecord
                                              .walletID !=
                                          '') ||
                                  (paymentSuccessfulTransactionHistoryRecord
                                          .walletID !=
                                      '') ||
                                  (paymentSuccessfulTransactionHistoryRecord
                                          .walletID !=
                                      'N/A'))
                                Text(
                                  'Wallet ID : ${paymentSuccessfulTransactionHistoryRecord.walletID}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        lineHeight: 1.2,
                                      ),
                                ),
                              if ((paymentSuccessfulTransactionHistoryRecord
                                              .merchantid !=
                                          null &&
                                      paymentSuccessfulTransactionHistoryRecord
                                              .merchantid !=
                                          '') ||
                                  (paymentSuccessfulTransactionHistoryRecord
                                          .merchantid !=
                                      '') ||
                                  (paymentSuccessfulTransactionHistoryRecord
                                          .merchantid !=
                                      'N/A'))
                                Text(
                                  'Merchant ID : ${paymentSuccessfulTransactionHistoryRecord.merchantid}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        lineHeight: 1.2,
                                      ),
                                ),
                              if (paymentSuccessfulTransactionHistoryRecord
                                          .phonenumber !=
                                      null &&
                                  paymentSuccessfulTransactionHistoryRecord
                                          .phonenumber !=
                                      '')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Phone No :  ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 20.0,
                                              lineHeight: 1.2,
                                            ),
                                      ),
                                      Text(
                                        paymentSuccessfulTransactionHistoryRecord
                                            .phonenumber,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 18.0,
                                              lineHeight: 1.2,
                                            ),
                                      ),
                                    ],
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
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
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
                                      'jms',
                                      getCurrentTimestamp,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
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
                                        'PAYMENT_SUCCESSFUL_Container_855tl5ak_ON');
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
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
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
      },
    );
  }
}
