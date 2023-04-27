import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'o_t_pverification_model.dart';
export 'o_t_pverification_model.dart';

class OTPverificationWidget extends StatefulWidget {
  const OTPverificationWidget({Key? key}) : super(key: key);

  @override
  _OTPverificationWidgetState createState() => _OTPverificationWidgetState();
}

class _OTPverificationWidgetState extends State<OTPverificationWidget> {
  late OTPverificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OTPverificationModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'OTPverification'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('O_T_PVERIFICATION_OTPverification_ON_INI');
      logFirebaseEvent('OTPverification_backend_call');

      final usersUpdateData = {
        'logincount': FieldValue.increment(1),
      };
      await currentUserReference!.update(usersUpdateData);
      logFirebaseEvent('OTPverification_timer');
      _model.timerController.onExecute.add(StopWatchExecute.start);
    });

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
        title: 'OTPverification',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0x00615F76),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                fillColor: Colors.transparent,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('O_T_PVERIFICATION_arrow_back_rounded_ICN');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.safePop();
                },
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.4),
                    child: Image.asset(
                      'assets/images/Ellipse_11.png',
                      width: 180.0,
                      height: 180.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Image.asset(
                      'assets/images/Ellipse_10.png',
                      width: 250.0,
                      height: 250.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, 1.19),
                    child: Image.asset(
                      'assets/images/Ellipse_9.png',
                      width: 180.0,
                      height: 180.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'OTP Verification',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Text(
                                    'We have sent a verification code to phone number',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF858282),
                                          fontSize: 14.0,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFAppState().phonenumber,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                    Text(
                                      ' Wrong number?',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: Color(0xFF0094D4),
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Verification Code ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                            if (_model.timerMilliseconds == 0)
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'O_T_PVERIFICATION_PAGE_Resend_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Resend_auth');
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
                                                    onCodeSent: () async {
                                                      context.goNamedAuth(
                                                        'OTPverification',
                                                        mounted,
                                                        ignoreRedirect: true,
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Text(
                                                  'Resend',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF0094D4),
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      PinCodeTextField(
                                        autoDisposeControllers: false,
                                        appContext: context,
                                        length: 6,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Nunito',
                                              color: Colors.black,
                                            ),
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        enableActiveFill: true,
                                        autoFocus: true,
                                        enablePinAutofill: true,
                                        errorTextSpace: 16.0,
                                        showCursor: true,
                                        cursorColor: Color(0xFFDAF377),
                                        obscureText: false,
                                        pinTheme: PinTheme(
                                          fieldHeight: 40.0,
                                          fieldWidth: 40.0,
                                          borderWidth: 2.0,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: PinCodeFieldShape.box,
                                          activeColor: Color(0xFFF1F1F1),
                                          inactiveColor: Color(0xFFF1F1F1),
                                          selectedColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          activeFillColor: Color(0xFFF1F1F1),
                                          inactiveFillColor: Color(0xFFF1F1F1),
                                          selectedFillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        controller: _model.pinCodeController,
                                        onChanged: (_) {},
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: _model
                                            .pinCodeControllerValidator
                                            .asValidator(context),
                                      ),
                                      if (_model.timerMilliseconds != 0)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GradientText(
                                                'Send code reload in',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          fontSize: 16.0,
                                                        ),
                                                colors: [
                                                  Color(0xA50094D4),
                                                  Color(0xFFB9EB51)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.rtl,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              FlutterFlowTimer(
                                                initialTime:
                                                    _model.timerMilliseconds,
                                                getDisplayTime: (value) =>
                                                    StopWatchTimer
                                                        .getDisplayTime(
                                                  value,
                                                  hours: false,
                                                  milliSecond: false,
                                                ),
                                                timer: _model.timerController,
                                                onChanged: (value, displayTime,
                                                    shouldUpdate) {
                                                  _model.timerMilliseconds =
                                                      value;
                                                  _model.timerValue =
                                                      displayTime;
                                                  if (shouldUpdate)
                                                    setState(() {});
                                                },
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 16.0,
                                                        ),
                                              ),
                                            ],
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
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 20.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'O_T_PVERIFICATION_PAGE_VERIFY_BTN_ON_TAP');
                                logFirebaseEvent('Button_auth');
                                GoRouter.of(context).prepareAuthEvent();
                                final smsCodeVal =
                                    _model.pinCodeController!.text;
                                if (smsCodeVal == null || smsCodeVal.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text('Enter SMS verification code.'),
                                    ),
                                  );
                                  return;
                                }
                                final phoneVerifiedUser =
                                    await authManager.verifySmsCode(
                                  context: context,
                                  smsCode: smsCodeVal,
                                );
                                if (phoneVerifiedUser == null) {
                                  return;
                                }

                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamedAuth(
                                    'createyourprofile', mounted);
                              },
                              text: 'Verify',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 52.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.black,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFFE2F692),
                                    ),
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E8E9),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
