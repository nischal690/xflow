import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'login'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LOGIN_PAGE_login_ON_INIT_STATE');
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      logFirebaseEvent('login_backend_call');
      _model.apiResultfjr = await CurrentlatlangcountryCall.call(
        lon: valueOrDefault<String>(
          functions.latlangtolon(currentUserLocationValue!),
          '0',
        ),
        lat: functions.latlangtolat(currentUserLocationValue!),
      );
      if ((_model.apiResultfjr?.succeeded ?? true)) {
        logFirebaseEvent('login_backend_call');
        _model.apiResultloc = await FlagsandshortformCall.call(
          countryname: CurrentlatlangcountryCall.currentcountry(
            (_model.apiResultfjr?.jsonBody ?? ''),
          ).toString().toString(),
        );
        if ((_model.apiResultloc?.succeeded ?? true)) {
          logFirebaseEvent('login_update_app_state');
          setState(() {
            FFAppState().Countryname = CurrentlatlangcountryCall.currentcountry(
              (_model.apiResultfjr?.jsonBody ?? ''),
            ).toString().toString();
            FFAppState().flag = FlagsandshortformCall.flag(
              (_model.apiResultloc?.jsonBody ?? ''),
            );
          });
        }
      }
    });

    _model.textController ??= TextEditingController();
    authManager.handlePhoneAuthStateChanges(context);
    authManager.handlePhoneAuthStateChanges(context);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'login',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, -1.18),
                    child: Image.asset(
                      'assets/images/Group_571.png',
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.28,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [],
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
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'LOGIN_PAGE_Text_rg6h8ou9_ON_TAP');
                                logFirebaseEvent('Text_navigate_to');

                                context.pushNamed('Community');
                              },
                              child: Text(
                                'Login',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 38.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          border: Border.all(
                                            color: Color(0xFFE8E8E9),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                0.0, 0.0),
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
                                                            'LOGIN_PAGE_Row_obf1ysbi_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Row_navigate_to');

                                                        context.pushNamed(
                                                            'CountrySelector');
                                                      },
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .flag,
                                                                'https://flagcdn.com/w320/us.png',
                                                              ),
                                                              width: 46.0,
                                                              height: 32.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .arrow_drop_down,
                                                            color: Colors.black,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
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
                                                    FFAppState().Countryname),
                                                '+1',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        lineHeight: 1.25,
                                                      ),
                                            ),
                                            Expanded(
                                              child: TextFormField(
                                                controller:
                                                    _model.textController,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: 'Phone number',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF8C8D93),
                                                      ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(8.0, 8.0,
                                                              0.0, 8.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: Colors.black,
                                                        ),
                                                keyboardType:
                                                    TextInputType.number,
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  FilteringTextInputFormatter
                                                      .allow(RegExp('[0-9]'))
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 33.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onDoubleTap: () async {
                                            logFirebaseEvent(
                                                'LOGIN_PAGE_LOGIN_BTN_ON_DOUBLE_TAP');
                                            logFirebaseEvent(
                                                'Button_update_app_state');
                                            setState(() {
                                              FFAppState().phonenumber =
                                                  '${valueOrDefault<String>(
                                                functions.getDialCode(
                                                    FFAppState().Countryname),
                                                '+1',
                                              )}${_model.textController.text}';
                                            });
                                            logFirebaseEvent('Button_auth');
                                            final phoneNumberVal =
                                                FFAppState().phonenumber;
                                            if (phoneNumberVal == null ||
                                                phoneNumberVal.isEmpty ||
                                                !phoneNumberVal
                                                    .startsWith('+')) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                      'Phone Number is required and has to start with +.'),
                                                ),
                                              );
                                              return;
                                            }
                                            await authManager.beginPhoneAuth(
                                              context: context,
                                              phoneNumber: phoneNumberVal,
                                              onCodeSent: (context) async {
                                                context.goNamedAuth(
                                                  'OTPverificationlogin',
                                                  context.mounted,
                                                  ignoreRedirect: true,
                                                );
                                              },
                                            );
                                          },
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'LOGIN_PAGE_LOGIN_BTN_ON_TAP');
                                              var _shouldSetState = false;
                                              if (functions
                                                      .lengthofphonenumber(
                                                          _model.textController
                                                              .text)
                                                      .toString() ==
                                                  '0') {
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState().update(() {
                                                  FFAppState().registerscreen =
                                                      false;
                                                });
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_custom_action');
                                                _model.usercheck = await actions
                                                    .checkUserExistsByCriteria(
                                                  '${valueOrDefault<String>(
                                                    functions.getDialCode(
                                                        FFAppState()
                                                            .Countryname),
                                                    '+1',
                                                  )}${_model.textController.text}',
                                                  'phone_number',
                                                );
                                                _shouldSetState = true;
                                                if (_model.usercheck!) {
                                                  logFirebaseEvent(
                                                      'Button_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                        .registerscreen = false;
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_update_app_state');
                                                  setState(() {
                                                    FFAppState().phonenumber =
                                                        '${valueOrDefault<String>(
                                                      functions.getDialCode(
                                                          FFAppState()
                                                              .Countryname),
                                                      '+1',
                                                    )}${_model.textController.text}';
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_auth');
                                                  final phoneNumberVal =
                                                      FFAppState().phonenumber;
                                                  if (phoneNumberVal == null ||
                                                      phoneNumberVal.isEmpty ||
                                                      !phoneNumberVal
                                                          .startsWith('+')) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                            'Phone Number is required and has to start with +.'),
                                                      ),
                                                    );
                                                    return;
                                                  }
                                                  await authManager
                                                      .beginPhoneAuth(
                                                    context: context,
                                                    phoneNumber: phoneNumberVal,
                                                    onCodeSent:
                                                        (context) async {
                                                      context.goNamedAuth(
                                                        'OTPverificationlogin',
                                                        context.mounted,
                                                        ignoreRedirect: true,
                                                      );
                                                    },
                                                  );
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                        .registerscreen = false;
                                                  });
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }

                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }

                                              if (_shouldSetState)
                                                setState(() {});
                                            },
                                            text: 'Login',
                                            icon: FaIcon(
                                              FontAwesomeIcons.pencilAlt,
                                              size: 16.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 52.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF1A1C26),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: Color(0xFFE2F692),
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
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
                            Visibility(
                              visible: !FFAppState().registerscreen,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF9EEEB),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    color: Color(0xFFEDD0C6),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 16.0, 20.0, 16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 40.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFC5658),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 12.0,
                                                      color: Color(0x40000000),
                                                      offset: Offset(0.0, 6.0),
                                                      spreadRadius: 0.0,
                                                    )
                                                  ],
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Icon(
                                                      Icons.close_outlined,
                                                      color: Color(0xFFFC5658),
                                                      size: 15.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Account Not Found',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        lineHeight: 1.25,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: 36.0,
                                            height: 36.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 10.36,
                                                  color: Color(0x0D000000),
                                                  offset: Offset(0.0, 3.11),
                                                  spreadRadius: 0.52,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOGIN_PAGE_Icon_xd40c9yh_ON_TAP');
                                                logFirebaseEvent(
                                                    'Icon_update_app_state');
                                                FFAppState().update(() {
                                                  FFAppState().registerscreen =
                                                      true;
                                                });
                                              },
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.black,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            50.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Please check your phone number  and try again.',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dont have an account?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito',
                                        fontSize: 16.0,
                                        lineHeight: 1.2,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 20.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'LOGIN_PAGE_Container_vpe1hnm1_ON_TAP');
                                  logFirebaseEvent('Container_navigate_to');

                                  context.pushNamed('Register');
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 52.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x09000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color: Color(0xFF7768D8),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Create an account',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: Color(0xFF7768D8),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.25,
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
        ));
  }
}
