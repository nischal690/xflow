import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/empty_transactions_widget.dart';
import '/components/navbar_widget.dart';
import '/components/select_country_widget.dart';
import '/components/set_pin_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.5, 0.5),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.5, 0.5),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_PAGE_PAGE_HomePage_ON_INIT_STATE');
      if (!(valueOrDefault(currentUserDocument?.balanceinCurrency, '') !=
              null &&
          valueOrDefault(currentUserDocument?.balanceinCurrency, '') != '')) {
        if (valueOrDefault(currentUserDocument?.currencyselected, '') != null &&
            valueOrDefault(currentUserDocument?.currencyselected, '') != '') {
          logFirebaseEvent('HomePage_backend_call');

          await currentUserReference!.update(createUsersRecordData(
            balanceinCurrency: '0',
          ));
        } else {
          logFirebaseEvent('HomePage_backend_call');

          await currentUserReference!.update(createUsersRecordData(
            balanceinCurrency: '0',
            currencyselected: valueOrDefault<String>(
              functions.returncountry(currentPhoneNumber),
              'USD',
            ),
            balanceinTHB: 0,
          ));
        }
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
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('HOME_PAGE_PAGE_Container_9se3x24a_ON_TAP');
                  logFirebaseEvent('Container_navigate_to');

                  context.pushNamed('Setting');
                },
                child: Container(
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Color(0xFF8C8D93),
                      width: 2.0,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: AuthUserStreamWidget(
                      builder: (context) => ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          currentUserPhoto,
                          width: 46.0,
                          height: 46.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (valueOrDefault(
                                        currentUserDocument?.logincount, 0) >
                                    1)
                                  AuthUserStreamWidget(
                                    builder: (context) => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'HOME_PAGE_PAGE_Text_tubji3qo_ON_TAP');
                                        logFirebaseEvent('Text_navigate_to');

                                        context
                                            .pushNamed('verfyingastravellers');
                                      },
                                      child: Text(
                                        'Welcome back,',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 16.0,
                                              lineHeight: 2.0,
                                            ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation1']!),
                                  ),
                                if (valueOrDefault(
                                        currentUserDocument?.logincount, 0) <
                                    1)
                                  AuthUserStreamWidget(
                                    builder: (context) => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'HOME_PAGE_PAGE_Text_s6dz4wq0_ON_TAP');
                                        logFirebaseEvent('Text_navigate_to');

                                        context
                                            .pushNamed('verfyingastravellers');
                                      },
                                      child: Text(
                                        'Welcome',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 16.0,
                                              lineHeight: 2.0,
                                            ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation2']!),
                                  ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  '${functions.firstname(currentUserDisplayName)}👋',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito',
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                        lineHeight: 1.2,
                                      ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'HOME_PAGE_PAGE_Container_aa36cnt2_ON_TAP');
                                logFirebaseEvent('Container_navigate_to');

                                context.pushNamed('Wallet');
                              },
                              child: Container(
                                width: double.infinity,
                                height: 188.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1A1C26),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 32.0,
                                      color: Color(0x1A000000),
                                      offset: Offset(0.0, 16.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.00, 1.00),
                                      child: Image.asset(
                                        'assets/images/Group_52.png',
                                        width: 133.0,
                                        height: 103.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/Group_53.png',
                                      width: 174.0,
                                      height: 131.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-5.25, 0.53),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 16.0, 20.0, 20.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: CurrencyfromcountryCall.call(
                                            shortform: FFAppState().shortform,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      Color(0xEA000000),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final columnCurrencyfromcountryResponse =
                                                snapshot.data!;
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'HOME_PAGE_PAGE_Text_bomaawyt_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Text_navigate_to');

                                                        context.pushNamed(
                                                            'createyourprofile');
                                                      },
                                                      child: Text(
                                                        'Wallet',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16.0,
                                                              lineHeight: 1.2,
                                                            ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'HOME_PAGE_PAGE_Container_x8d5ersj_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Container_bottom_sheet');
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    Container(
                                                                  height: double
                                                                      .infinity,
                                                                  child:
                                                                      SelectCountryWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      },
                                                      child: Container(
                                                        height: 36.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            if (FFAppState()
                                                                        .shortform !=
                                                                    null &&
                                                                FFAppState()
                                                                        .shortform !=
                                                                    '')
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        8.0,
                                                                        12.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          6.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          image:
                                                                              DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                Image.network(
                                                                              FFAppState().flag,
                                                                            ).image,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(20.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    AutoSizeText(
                                                                      FFAppState()
                                                                          .shortform,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Nunito',
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            lineHeight:
                                                                                1.2,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                        .shortform ==
                                                                    null ||
                                                                FFAppState()
                                                                        .shortform ==
                                                                    '')
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  'Select Country',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nunito',
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        lineHeight:
                                                                            1.2,
                                                                      ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    AuthUserStreamWidget(
                                                      builder: (context) =>
                                                          Text(
                                                        valueOrDefault<String>(
                                                          '${() {
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.country,
                                                                    '') ==
                                                                'India') {
                                                              return '₹';
                                                            } else if (functions
                                                                .returnEurope(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.country,
                                                                        ''))) {
                                                              return '€';
                                                            } else {
                                                              return '\$';
                                                            }
                                                          }()}${valueOrDefault<String>(
                                                            formatNumber(
                                                              functions.currencytodouble(
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.balanceinCurrency,
                                                                      '')),
                                                              formatType:
                                                                  FormatType
                                                                      .custom,
                                                              format: '0.00',
                                                              locale: '',
                                                            ),
                                                            '0',
                                                          )}',
                                                          '0',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 32.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              lineHeight: 1.2,
                                                            ),
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                                .paymentCountry !=
                                                            null &&
                                                        FFAppState()
                                                                .paymentCountry !=
                                                            '')
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Text(
                                                          valueOrDefault<
                                                              String>(
                                                            () {
                                                              if (FFAppState()
                                                                      .paymentCountry ==
                                                                  'Thailand') {
                                                                return '฿ ${functions.convertthaibaht(valueOrDefault(currentUserDocument?.balanceinTHB, 0)).toString()}';
                                                              } else if (FFAppState()
                                                                      .paymentCountry ==
                                                                  'India') {
                                                                return '₹ ${valueOrDefault(currentUserDocument?.currencyselected, '') == 'USD' ? formatNumber(
                                                                    double.parse(valueOrDefault(
                                                                            currentUserDocument?.balanceinCurrency,
                                                                            '')) *
                                                                        74.86,
                                                                    formatType:
                                                                        FormatType
                                                                            .decimal,
                                                                    decimalType:
                                                                        DecimalType
                                                                            .periodDecimal,
                                                                  ) : valueOrDefault<String>(
                                                                    (double.parse(valueOrDefault(currentUserDocument?.balanceinCurrency,
                                                                                '')) *
                                                                            76.86)
                                                                        .toString(),
                                                                    '0',
                                                                  )}';
                                                              } else {
                                                                return 'N/A';
                                                              }
                                                            }(),
                                                            'N/A',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Color(
                                                                    0xFFE2F692),
                                                              ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: Container(
                                width: double.infinity,
                                height: 113.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 20.0,
                                      color: Color(0x0C000000),
                                      offset: Offset(0.0, 6.0),
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(28.0),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_PAGE_Column_9qle1v6j_ON_TAP');
                                              if ((valueOrDefault(
                                                          currentUserDocument
                                                              ?.pin,
                                                          0) ==
                                                      null) ||
                                                  (valueOrDefault(
                                                          currentUserDocument
                                                              ?.pin,
                                                          0) ==
                                                      0)) {
                                                logFirebaseEvent(
                                                    'Column_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: Container(
                                                          height:
                                                              double.infinity,
                                                          child: SetPinWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              } else {
                                                if (FFAppState()
                                                            .paymentCountry !=
                                                        null &&
                                                    FFAppState()
                                                            .paymentCountry !=
                                                        '') {
                                                  logFirebaseEvent(
                                                      'Column_scan_barcode_q_r_code');
                                                  _model.qrData =
                                                      await FlutterBarcodeScanner
                                                          .scanBarcode(
                                                    '#C62828', // scanning line color
                                                    'Cancel', // cancel button text
                                                    true, // whether to show the flash icon
                                                    ScanMode.QR,
                                                  );

                                                  logFirebaseEvent(
                                                      'Column_custom_action');
                                                  _model.na = await actions
                                                      .identifyQRData(
                                                    _model.qrData!,
                                                  );
                                                  if (_model.na ==
                                                      'PromptPay') {
                                                    logFirebaseEvent(
                                                        'Column_backend_call');

                                                    var transactionHistoryRecordReference1 =
                                                        TransactionHistoryRecord
                                                            .collection
                                                            .doc();
                                                    await transactionHistoryRecordReference1
                                                        .set(
                                                            createTransactionHistoryRecordData(
                                                      country: 'Thailand',
                                                      qRdata: _model.qrData,
                                                      transactiontime:
                                                          getCurrentTimestamp,
                                                      by: currentUserReference,
                                                      success: false,
                                                    ));
                                                    _model.transaction1 =
                                                        TransactionHistoryRecord
                                                            .getDocumentFromData(
                                                                createTransactionHistoryRecordData(
                                                                  country:
                                                                      'Thailand',
                                                                  qRdata: _model
                                                                      .qrData,
                                                                  transactiontime:
                                                                      getCurrentTimestamp,
                                                                  by: currentUserReference,
                                                                  success:
                                                                      false,
                                                                ),
                                                                transactionHistoryRecordReference1);
                                                    logFirebaseEvent(
                                                        'Column_update_app_state');
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .paymentCountry =
                                                          'Thailand';
                                                      FFAppState().shortform =
                                                          'THA';
                                                      FFAppState().flag =
                                                          'https://flagcdn.com/w40/th.png';
                                                    });
                                                    logFirebaseEvent(
                                                        'Column_navigate_to');

                                                    context.goNamed(
                                                      'receiverProfile',
                                                      queryParameters: {
                                                        'transactiondocument':
                                                            serializeParam(
                                                          _model.transaction1,
                                                          ParamType.Document,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'transactiondocument':
                                                            _model.transaction1,
                                                      },
                                                    );
                                                  } else {
                                                    if (_model.na == 'UPI ID') {
                                                      logFirebaseEvent(
                                                          'Column_backend_call');

                                                      var transactionHistoryRecordReference2 =
                                                          TransactionHistoryRecord
                                                              .collection
                                                              .doc();
                                                      await transactionHistoryRecordReference2
                                                          .set(
                                                              createTransactionHistoryRecordData(
                                                        country: 'India',
                                                        qRdata: _model.qrData,
                                                        transactiontime:
                                                            getCurrentTimestamp,
                                                        by: currentUserReference,
                                                        success: false,
                                                      ));
                                                      _model.transaction =
                                                          TransactionHistoryRecord
                                                              .getDocumentFromData(
                                                                  createTransactionHistoryRecordData(
                                                                    country:
                                                                        'India',
                                                                    qRdata: _model
                                                                        .qrData,
                                                                    transactiontime:
                                                                        getCurrentTimestamp,
                                                                    by: currentUserReference,
                                                                    success:
                                                                        false,
                                                                  ),
                                                                  transactionHistoryRecordReference2);
                                                      logFirebaseEvent(
                                                          'Column_update_app_state');
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .paymentCountry =
                                                            'India';
                                                        FFAppState().shortform =
                                                            'IND';
                                                        FFAppState().flag =
                                                            'https://flagcdn.com/w40/in.png';
                                                      });
                                                      logFirebaseEvent(
                                                          'Column_navigate_to');

                                                      context.goNamed(
                                                        'receiverProfileIndia',
                                                        queryParameters: {
                                                          'transactiondocument':
                                                              serializeParam(
                                                            _model.transaction,
                                                            ParamType.Document,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'transactiondocument':
                                                              _model
                                                                  .transaction,
                                                        },
                                                      );
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Column_show_snack_bar');
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Scan a valid QR ',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                        ),
                                                      );
                                                    }
                                                  }
                                                } else {
                                                  logFirebaseEvent(
                                                      'Column_bottom_sheet');
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child: Container(
                                                            height:
                                                                double.infinity,
                                                            child:
                                                                SelectCountryWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                }
                                              }

                                              setState(() {});
                                            },
                                            onLongPress: () async {
                                              logFirebaseEvent(
                                                  'HOME_Column_9qle1v6j_ON_LONG_PRESS');
                                              logFirebaseEvent(
                                                  'Column_bottom_sheet');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: Container(
                                                        height: 268.0,
                                                        child:
                                                            SelectCountryWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 56.0,
                                                  height: 56.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1A1C26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Icon(
                                                    FFIcons.kscan,
                                                    color: Color(0xFFE2F692),
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Scan QR',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF101213),
                                                        lineHeight: 1.2,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_PAGE_Column_nrrc6lw8_ON_TAP');
                                              logFirebaseEvent(
                                                  'Column_navigate_to');

                                              context.pushNamed('Wallet');
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 56.0,
                                                  height: 56.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1A1C26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Icon(
                                                    FFIcons.kwallet,
                                                    color: Color(0xFFE2F692),
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Wallet',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF101213),
                                                        lineHeight: 1.2,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_PAGE_Column_kaw02xas_ON_TAP');
                                              logFirebaseEvent(
                                                  'Column_backend_call');

                                              var transactionHistoryRecordReference =
                                                  TransactionHistoryRecord
                                                      .collection
                                                      .doc();
                                              await transactionHistoryRecordReference
                                                  .set(
                                                      createTransactionHistoryRecordData(
                                                country: 'India',
                                                qRdata:
                                                    'upi://pay?pa=nischal7328895064@paytm&pn=NISCHAL%20NAYAK&mc=0000&mode=02&purpose=00&orgid=159761',
                                                transactiontime:
                                                    getCurrentTimestamp,
                                                by: currentUserReference,
                                                success: false,
                                              ));
                                              _model.transactionCopy =
                                                  TransactionHistoryRecord
                                                      .getDocumentFromData(
                                                          createTransactionHistoryRecordData(
                                                            country: 'India',
                                                            qRdata:
                                                                'upi://pay?pa=nischal7328895064@paytm&pn=NISCHAL%20NAYAK&mc=0000&mode=02&purpose=00&orgid=159761',
                                                            transactiontime:
                                                                getCurrentTimestamp,
                                                            by: currentUserReference,
                                                            success: false,
                                                          ),
                                                          transactionHistoryRecordReference);
                                              logFirebaseEvent(
                                                  'Column_update_app_state');
                                              FFAppState().update(() {
                                                FFAppState().paymentCountry =
                                                    'India';
                                                FFAppState().shortform = 'IND';
                                                FFAppState().flag =
                                                    'https://flagcdn.com/w40/in.png';
                                              });
                                              logFirebaseEvent(
                                                  'Column_navigate_to');

                                              context.goNamed(
                                                'receiverProfileIndia',
                                                queryParameters: {
                                                  'transactiondocument':
                                                      serializeParam(
                                                    _model.transactionCopy,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'transactiondocument':
                                                      _model.transactionCopy,
                                                },
                                              );

                                              setState(() {});
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 56.0,
                                                  height: 56.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1A1C26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Icon(
                                                    FFIcons.kmapConverted,
                                                    color: Color(0xF6E2F692),
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Guide',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF101213),
                                                        lineHeight: 1.2,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_PAGE_Column_3dv0167k_ON_TAP');
                                              logFirebaseEvent(
                                                  'Column_launch_u_r_l');
                                              await launchURL(
                                                  'https://discord.gg/9yJufuNsk2');
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 56.0,
                                                  height: 56.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1A1C26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Icon(
                                                    FFIcons.kglobalSearch,
                                                    color: Color(0xFFE2F692),
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Community',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        lineHeight: 1.2,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Transaction History',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Nunito',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.2,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 20.0,
                                      color: Color(0x0E000000),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 190.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: StreamBuilder<
                                            List<TransactionHistoryRecord>>(
                                          stream: queryTransactionHistoryRecord(
                                            queryBuilder:
                                                (transactionHistoryRecord) =>
                                                    transactionHistoryRecord
                                                        .where(
                                                          'By',
                                                          isEqualTo:
                                                              currentUserReference,
                                                        )
                                                        .where(
                                                          'success',
                                                          isEqualTo: true,
                                                        )
                                                        .orderBy(
                                                            'Transactiontime'),
                                            limit: 2,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      Color(0xEA000000),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<TransactionHistoryRecord>
                                                columnTransactionHistoryRecordList =
                                                snapshot.data!;
                                            if (columnTransactionHistoryRecordList
                                                .isEmpty) {
                                              return Center(
                                                child:
                                                    EmptyTransactionsWidget(),
                                              );
                                            }
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  columnTransactionHistoryRecordList
                                                      .length, (columnIndex) {
                                                final columnTransactionHistoryRecord =
                                                    columnTransactionHistoryRecordList[
                                                        columnIndex];
                                                return Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                16.0,
                                                                20.0,
                                                                16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'HOME_PAGE_PAGE_Row_aaajzdek_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Row_navigate_to');

                                                            context.pushNamed(
                                                                'profile');
                                                          },
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Wrap(
                                                                spacing: 0.0,
                                                                runSpacing: 0.0,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                                direction: Axis
                                                                    .horizontal,
                                                                runAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalDirection:
                                                                    VerticalDirection
                                                                        .down,
                                                                clipBehavior:
                                                                    Clip.none,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            44.0,
                                                                        height:
                                                                            44.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF1A1C26),
                                                                          image:
                                                                              DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                Image.asset(
                                                                              'assets/images/shopkeeper.png',
                                                                            ).image,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        if ((columnTransactionHistoryRecord.merchantid != null && columnTransactionHistoryRecord.merchantid != '') ||
                                                                            (columnTransactionHistoryRecord.merchantid ==
                                                                                '') ||
                                                                            (columnTransactionHistoryRecord.merchantid ==
                                                                                'N/A'))
                                                                          Text(
                                                                            'Merchant ID : ${columnTransactionHistoryRecord.merchantid}',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        if ((columnTransactionHistoryRecord.walletID != null && columnTransactionHistoryRecord.walletID != '') ||
                                                                            (columnTransactionHistoryRecord.walletID ==
                                                                                '') ||
                                                                            (columnTransactionHistoryRecord.walletID ==
                                                                                'N/A'))
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              'wallet ID  : ${columnTransactionHistoryRecord.walletID}',
                                                                              'N/A',
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            dateTimeFormat(
                                                                              'M/d h:mm a',
                                                                              columnTransactionHistoryRecord.transactiontime!,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Text(
                                                                '฿ ${columnTransactionHistoryRecord.amount}',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        ),
                                      ),
                                      StreamBuilder<
                                          List<TransactionHistoryRecord>>(
                                        stream: queryTransactionHistoryRecord(
                                          limit: 2,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    Color(0xEA000000),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<TransactionHistoryRecord>
                                              containerTransactionHistoryRecordList =
                                              snapshot.data!;
                                          return Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Visibility(
                                              visible:
                                                  containerTransactionHistoryRecordList
                                                          .where(
                                                              (e) => e.success)
                                                          .toList()
                                                          .length >
                                                      0,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 20.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'HOME_PAGE_PAGE_Container_p2lsnzoc_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Container_navigate_to');

                                                    context.goNamed('History');
                                                  },
                                                  child: Container(
                                                    width: 334.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFCFFE9),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFE1E1E1),
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        'Show all',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Nunito',
                                                              color: Color(
                                                                  0x65101213),
                                                              fontSize: 17.0,
                                                              lineHeight: 1.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
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
                  wrapWithModel(
                    model: _model.navbarModel,
                    updateCallback: () => setState(() {}),
                    child: NavbarWidget(),
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
