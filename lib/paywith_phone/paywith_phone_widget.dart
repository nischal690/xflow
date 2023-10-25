import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/select_country_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'paywith_phone_model.dart';
export 'paywith_phone_model.dart';

class PaywithPhoneWidget extends StatefulWidget {
  const PaywithPhoneWidget({Key? key}) : super(key: key);

  @override
  _PaywithPhoneWidgetState createState() => _PaywithPhoneWidgetState();
}

class _PaywithPhoneWidgetState extends State<PaywithPhoneWidget> {
  late PaywithPhoneModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaywithPhoneModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'paywithPhone'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PAYWITH_PHONE_paywithPhone_ON_INIT_STATE');
      logFirebaseEvent('paywithPhone_backend_call');

      await currentUserReference!.update({
        ...mapToFirestore(
          {
            'logincount': FieldValue.increment(1),
          },
        ),
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
                    logFirebaseEvent('PAYWITH_PHONE_PAGE_Icon_k6ncezib_ON_TAP');
                    logFirebaseEvent('Icon_navigate_to');

                    context.pushNamed('HomePage');
                  },
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Color(0xFF101213),
                    size: 24.0,
                  ),
                ),
              ),
              Text(
                'Pay with Phone',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nunito',
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.2,
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
            alignment: AlignmentDirectional(1.0, 0.7),
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
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: 227.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFDAF377),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '   Receiver Country : ',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'PAYWITH_PHONE_Container_wlhi4iv4_ON_TAP');
                                  logFirebaseEvent('Container_bottom_sheet');
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: Container(
                                            height: double.infinity,
                                            child: SelectCountryWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Container(
                                  height: 36.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (FFAppState().shortform != null &&
                                          FFAppState().shortform != '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 8.0, 12.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 6.0, 0.0),
                                                child: Container(
                                                  width: 20.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        FFAppState()
                                                            .paymentflag,
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                ),
                                              ),
                                              AutoSizeText(
                                                FFAppState().shortform,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          lineHeight: 1.2,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (FFAppState().shortform == null ||
                                          FFAppState().shortform == '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: AutoSizeText(
                                            'Select Country',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                  lineHeight: 1.2,
                                                ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20.0,
                            color: Color(0x0D000000),
                            offset: Offset(0.0, 6.0),
                            spreadRadius: 1.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                'Phone no ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFF1A1C26),
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x1A000000),
                                    offset: Offset(0.0, 2.0),
                                    spreadRadius: 0.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: Color(0xFFE8E8E9),
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    FFAppState().paymentflag,
                                                    'https://flagcdn.com/w40/th.png',
                                                  ),
                                                  width: 46.0,
                                                  height: 32.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.black,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    thickness: 1.0,
                                    color: Color(0xFFE8E8E9),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      functions.getDialCode(
                                          FFAppState().paymentCountry),
                                      '+66',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.25,
                                        ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Phone number',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              color: Color(0xFF8C8D93),
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                8.0, 8.0, 0.0, 8.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: Colors.black,
                                          ),
                                      keyboardType: TextInputType.number,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]'))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 22.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'PAYWITH_PHONE_PAGE_CONTINUE_BTN_ON_TAP');
                                  if (_model.textController.text != null &&
                                      _model.textController.text != '') {
                                    if (functions
                                            .checkthai(valueOrDefault<String>(
                                          '${valueOrDefault<String>(
                                            functions.getDialCode(
                                                FFAppState().paymentCountry),
                                            '+66',
                                          )}${_model.textController.text}',
                                          '+66',
                                        )) ==
                                        'Thailand') {
                                      logFirebaseEvent('Button_backend_call');

                                      var transactionHistoryRecordReference1 =
                                          TransactionHistoryRecord.collection
                                              .doc();
                                      await transactionHistoryRecordReference1
                                          .set(
                                              createTransactionHistoryRecordData(
                                        phonenumber: '${valueOrDefault<String>(
                                          functions.getDialCode(
                                              FFAppState().paymentCountry),
                                          '+66',
                                        )}${_model.textController.text}',
                                        by: currentUserReference,
                                        country: 'Thailand',
                                        transactiontime: getCurrentTimestamp,
                                      ));
                                      _model.transact = TransactionHistoryRecord
                                          .getDocumentFromData(
                                              createTransactionHistoryRecordData(
                                                phonenumber:
                                                    '${valueOrDefault<String>(
                                                  functions.getDialCode(
                                                      FFAppState()
                                                          .paymentCountry),
                                                  '+66',
                                                )}${_model.textController.text}',
                                                by: currentUserReference,
                                                country: 'Thailand',
                                                transactiontime:
                                                    getCurrentTimestamp,
                                              ),
                                              transactionHistoryRecordReference1);
                                      logFirebaseEvent('Button_navigate_to');

                                      context.goNamed(
                                        'receiverProfile',
                                        queryParameters: {
                                          'transactiondocument': serializeParam(
                                            _model.transact,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'transactiondocument':
                                              _model.transact,
                                        },
                                      );
                                    } else {
                                      if (functions.checkthai(
                                              '${valueOrDefault<String>(
                                            functions.getDialCode(
                                                FFAppState().paymentCountry),
                                            '+66',
                                          )}${_model.textController.text}') ==
                                          'India') {
                                        logFirebaseEvent('Button_backend_call');

                                        var transactionHistoryRecordReference2 =
                                            TransactionHistoryRecord.collection
                                                .doc();
                                        await transactionHistoryRecordReference2
                                            .set(
                                                createTransactionHistoryRecordData(
                                          phonenumber:
                                              '${valueOrDefault<String>(
                                            functions.getDialCode(
                                                FFAppState().paymentCountry),
                                            '+66',
                                          )}${_model.textController.text}',
                                          by: currentUserReference,
                                          country: 'India',
                                          transactiontime: getCurrentTimestamp,
                                        ));
                                        _model.transact2 = TransactionHistoryRecord
                                            .getDocumentFromData(
                                                createTransactionHistoryRecordData(
                                                  phonenumber:
                                                      '${valueOrDefault<String>(
                                                    functions.getDialCode(
                                                        FFAppState()
                                                            .paymentCountry),
                                                    '+66',
                                                  )}${_model.textController.text}',
                                                  by: currentUserReference,
                                                  country: 'India',
                                                  transactiontime:
                                                      getCurrentTimestamp,
                                                ),
                                                transactionHistoryRecordReference2);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.goNamed(
                                          'receiverProfileIndia',
                                          queryParameters: {
                                            'transactiondocument':
                                                serializeParam(
                                              _model.transact2,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'transactiondocument':
                                                _model.transact2,
                                          },
                                        );
                                      } else {
                                        logFirebaseEvent(
                                            'Button_show_snack_bar');
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Select a Country',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor: Color(0xFF1A1C26),
                                          ),
                                        );
                                      }
                                    }
                                  } else {
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Phone number is empty',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFF1A1C26),
                                      ),
                                    );
                                  }

                                  setState(() {});
                                },
                                text: 'Continue',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 52.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF1A1C26),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFFE2F692),
                                        fontWeight: FontWeight.bold,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ),
                          ],
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
