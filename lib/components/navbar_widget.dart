import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/select_country_widget.dart';
import '/components/set_pin_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    Key? key,
    this.transaction,
  }) : super(key: key);

  final TransactionHistoryRecord? transaction;

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 89.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              if (!FFAppState().Home)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('NAVBAR_COMP_Column_2oacwfu9_ON_TAP');
                    logFirebaseEvent('Column_update_app_state');
                    FFAppState().update(() {
                      FFAppState().Home = true;
                      FFAppState().Transact = false;
                      FFAppState().History = false;
                      FFAppState().community = false;
                    });
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed('HomePage');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FFIcons.khome2,
                        color: Color(0x33000000),
                        size: 24.0,
                      ),
                      Text(
                        'Home',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: Color(0x34101213),
                              lineHeight: 2.0,
                            ),
                      ),
                    ],
                  ),
                ),
              Stack(
                alignment: AlignmentDirectional(0.34, -0.7),
                children: [
                  if (FFAppState().Home)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('NAVBAR_COMP_Column_jiibfgay_ON_TAP');
                        logFirebaseEvent('Column_update_app_state');
                        FFAppState().update(() {
                          FFAppState().Home = true;
                          FFAppState().Transact = false;
                          FFAppState().History = false;
                          FFAppState().community = false;
                        });
                        logFirebaseEvent('Column_navigate_to');

                        context.pushNamed('HomePage');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FFIcons.khome2,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Text(
                            'Home',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: Color(0xFF101213),
                                  lineHeight: 2.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ),
          Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              if (!FFAppState().Transact)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('NAVBAR_COMP_Column_gx21q42j_ON_TAP');
                    logFirebaseEvent('Column_update_app_state');
                    FFAppState().update(() {
                      FFAppState().Home = false;
                      FFAppState().Transact = true;
                      FFAppState().History = false;
                      FFAppState().community = false;
                    });
                    if ((valueOrDefault(currentUserDocument?.pin, 0) == null) ||
                        (valueOrDefault(currentUserDocument?.pin, 0) == 0)) {
                      logFirebaseEvent('Column_bottom_sheet');
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: Container(
                              height: double.infinity,
                              child: SetPinWidget(),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    } else {
                      if (FFAppState().paymentCountry != null &&
                          FFAppState().paymentCountry != '') {
                        logFirebaseEvent('Column_scan_barcode_q_r_code');
                        _model.qrData0 =
                            await FlutterBarcodeScanner.scanBarcode(
                          '#C62828', // scanning line color
                          'Cancel', // cancel button text
                          true, // whether to show the flash icon
                          ScanMode.QR,
                        );

                        logFirebaseEvent('Column_custom_action');
                        _model.na0 = await actions.identifyQRData(
                          _model.qrData0!,
                        );
                        if (_model.na0 == 'PromptPay') {
                          logFirebaseEvent('Column_backend_call');

                          var transactionHistoryRecordReference1 =
                              TransactionHistoryRecord.collection.doc();
                          await transactionHistoryRecordReference1
                              .set(createTransactionHistoryRecordData(
                            country: 'Thailand',
                            qRdata: _model.qrData0,
                            transactiontime: getCurrentTimestamp,
                            by: currentUserReference,
                            success: false,
                          ));
                          _model.transaction0 =
                              TransactionHistoryRecord.getDocumentFromData(
                                  createTransactionHistoryRecordData(
                                    country: 'Thailand',
                                    qRdata: _model.qrData0,
                                    transactiontime: getCurrentTimestamp,
                                    by: currentUserReference,
                                    success: false,
                                  ),
                                  transactionHistoryRecordReference1);
                          logFirebaseEvent('Column_navigate_to');

                          context.goNamed(
                            'receiverProfile',
                            queryParameters: {
                              'transactiondocument': serializeParam(
                                _model.transaction0,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'transactiondocument': _model.transaction0,
                            },
                          );
                        } else {
                          if (_model.na0 == 'UPI ID') {
                            logFirebaseEvent('Column_backend_call');

                            var transactionHistoryRecordReference2 =
                                TransactionHistoryRecord.collection.doc();
                            await transactionHistoryRecordReference2
                                .set(createTransactionHistoryRecordData(
                              country: 'India',
                              qRdata: _model.qrData0,
                              transactiontime: getCurrentTimestamp,
                              by: currentUserReference,
                              success: false,
                            ));
                            _model.transaction3 =
                                TransactionHistoryRecord.getDocumentFromData(
                                    createTransactionHistoryRecordData(
                                      country: 'India',
                                      qRdata: _model.qrData0,
                                      transactiontime: getCurrentTimestamp,
                                      by: currentUserReference,
                                      success: false,
                                    ),
                                    transactionHistoryRecordReference2);
                            logFirebaseEvent('Column_navigate_to');

                            context.goNamed(
                              'receiverProfile',
                              queryParameters: {
                                'transactiondocument': serializeParam(
                                  _model.transaction3,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'transactiondocument': _model.transaction3,
                              },
                            );
                          } else {
                            logFirebaseEvent('Column_show_snack_bar');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Scan a valid QR ',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).error,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                              ),
                            );
                          }
                        }
                      } else {
                        logFirebaseEvent('Column_bottom_sheet');
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: Container(
                                height: double.infinity,
                                child: SelectCountryWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      }
                    }

                    setState(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.swap_horiz,
                        color: Color(0x33000000),
                        size: 24.0,
                      ),
                      Text(
                        'Transact',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: Color(0x34101213),
                              lineHeight: 2.0,
                            ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              if (!FFAppState().History)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('NAVBAR_COMP_Column_q1qjt6qn_ON_TAP');
                    logFirebaseEvent('Column_update_app_state');
                    FFAppState().update(() {
                      FFAppState().Home = false;
                      FFAppState().Transact = false;
                      FFAppState().History = true;
                      FFAppState().community = false;
                    });
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed('History');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.swap_vert_circle_sharp,
                        color: Color(0x33000000),
                        size: 24.0,
                      ),
                      Text(
                        'History',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: Color(0x34101213),
                              lineHeight: 2.0,
                            ),
                      ),
                    ],
                  ),
                ),
              if (FFAppState().History)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('NAVBAR_COMP_Column_dr95ofar_ON_TAP');
                    logFirebaseEvent('Column_update_app_state');
                    FFAppState().update(() {
                      FFAppState().Home = false;
                      FFAppState().Transact = false;
                      FFAppState().History = true;
                      FFAppState().community = false;
                    });
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed('History');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.swap_vert_circle_sharp,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      Text(
                        'History',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: Color(0xFF101213),
                              lineHeight: 2.0,
                            ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
