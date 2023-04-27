import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({Key? key}) : super(key: key);

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

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
              Visibility(
                visible: !FFAppState().Home,
                child: InkWell(
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
              ),
              Stack(
                alignment: AlignmentDirectional(0.34, -0.7),
                children: [
                  ClipOval(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 2.0,
                        sigmaY: 2.0,
                      ),
                      child: Container(
                        width: 18.0,
                        height: 18.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFE2F692),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
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
              Visibility(
                visible: !FFAppState().community,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('NAVBAR_COMP_Column_wng5ji5d_ON_TAP');
                    logFirebaseEvent('Column_update_app_state');
                    FFAppState().update(() {
                      FFAppState().Home = false;
                      FFAppState().Transact = false;
                      FFAppState().History = false;
                      FFAppState().community = true;
                    });
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed('Community');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FFIcons.kpeople,
                        color: Color(0x33000000),
                        size: 24.0,
                      ),
                      Text(
                        'Community',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: Color(0x34101213),
                              lineHeight: 2.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional(0.34, -0.7),
                children: [
                  if (FFAppState().community)
                    ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 2.0,
                          sigmaY: 2.0,
                        ),
                        child: Container(
                          width: 18.0,
                          height: 18.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFE2F692),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  if (FFAppState().community)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('NAVBAR_COMP_Column_btd9wlyi_ON_TAP');
                        logFirebaseEvent('Column_update_app_state');
                        FFAppState().update(() {
                          FFAppState().Home = true;
                          FFAppState().Transact = false;
                          FFAppState().History = false;
                          FFAppState().community = true;
                        });
                        logFirebaseEvent('Column_navigate_to');

                        context.pushNamed('Community');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (FFAppState().community)
                            Icon(
                              FFIcons.kpeople,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          Text(
                            'Community',
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
              Visibility(
                visible: !FFAppState().Transact,
                child: InkWell(
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
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed('Transact');
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
              ),
              Stack(
                alignment: AlignmentDirectional(0.34, -0.7),
                children: [
                  if (FFAppState().Transact)
                    ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0,
                        ),
                        child: Container(
                          width: 18.0,
                          height: 18.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFE2F692),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  if (FFAppState().Transact)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('NAVBAR_COMP_Column_sl91uwpw_ON_TAP');
                        logFirebaseEvent('Column_update_app_state');
                        FFAppState().update(() {
                          FFAppState().Home = false;
                          FFAppState().Transact = true;
                          FFAppState().History = false;
                          FFAppState().community = false;
                        });
                        logFirebaseEvent('Column_navigate_to');

                        context.pushNamed('Transact');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.swap_horiz,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Text(
                            'Transact',
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
              Visibility(
                visible: !FFAppState().History,
                child: InkWell(
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
              ),
              Visibility(
                visible: FFAppState().History,
                child: InkWell(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
