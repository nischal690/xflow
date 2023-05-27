import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar_widget.dart';
import '/components/userpost_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'community_model.dart';
export 'community_model.dart';

class CommunityWidget extends StatefulWidget {
  const CommunityWidget({Key? key}) : super(key: key);

  @override
  _CommunityWidgetState createState() => _CommunityWidgetState();
}

class _CommunityWidgetState extends State<CommunityWidget>
    with TickerProviderStateMixin {
  late CommunityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: Offset(-20.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: Offset(-20.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'transformOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(30.0, -30.0),
        ),
      ],
    ),
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunityModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Community'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('COMMUNITY_PAGE_Community_ON_INIT_STATE');
      logFirebaseEvent('Community_backend_call');

      final usersUpdateData = {
        'logincount': FieldValue.increment(1),
      };
      await currentUserReference!.update(usersUpdateData);
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        title: 'Community',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
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
                        logFirebaseEvent('COMMUNITY_PAGE_Icon_170ewijx_ON_TAP');
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
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('COMMUNITY_PAGE_Row_rtih6jy0_ON_TAP');
                      logFirebaseEvent('Row_navigate_to');

                      context.pushNamed('CountrySelector2');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            FFAppState().Countrysearch,
                            'All Countries',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Nunito',
                                color: Color(0xFF333333),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                lineHeight: 1.2,
                              ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.black,
                          size: 24.0,
                        ),
                      ],
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
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('COMMUNITY_PAGE_Icon_w2m5s72g_ON_TAP');
                        logFirebaseEvent('Icon_navigate_to');

                        context.pushNamed('Setting');
                      },
                      child: Icon(
                        Icons.settings,
                        color: Color(0xFF101213),
                        size: 24.0,
                      ),
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
                      width: 180.0,
                      height: 180.0,
                      fit: BoxFit.cover,
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
                    children: [
                      FlutterFlowChoiceChips(
                        options: [ChipData('Posts'), ChipData('Services')],
                        onChanged: (val) => setState(
                            () => _model.choiceChipsValue = val?.first),
                        selectedChipStyle: ChipStyle(
                          backgroundColor: Color(0xF6E2F692),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    color: Colors.black,
                                  ),
                          iconColor: Colors.black,
                          iconSize: 18.0,
                          elevation: 4.0,
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Nunito',
                                    color: Colors.black,
                                  ),
                          iconColor: Color(0xFFE3E7ED),
                          iconSize: 18.0,
                          elevation: 4.0,
                        ),
                        chipSpacing: 20.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: StreamBuilder<List<UserspostRecord>>(
                            stream: queryUserspostRecord(
                              queryBuilder: (userspostRecord) =>
                                  userspostRecord.where('location.country',
                                      isEqualTo: FFAppState().sortname != ''
                                          ? FFAppState().sortname
                                          : null),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      color: Color(0xEA000000),
                                    ),
                                  ),
                                );
                              }
                              List<UserspostRecord>
                                  listViewUserspostRecordList = snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewUserspostRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewUserspostRecord =
                                      listViewUserspostRecordList[
                                          listViewIndex];
                                  return UserpostWidget(
                                    key: Key(
                                        'Keywkk_${listViewIndex}_of_${listViewUserspostRecordList.length}'),
                                    userpostref:
                                        listViewUserspostRecord.reference,
                                  );
                                },
                              );
                            },
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            width: 200.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x30000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'COMMUNITY_PAGE_LocationOption_ON_TAP');
                                      logFirebaseEvent(
                                          'LocationOption_navigate_to');

                                      context.pushNamed('Discover');
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.emoji_people,
                                              color: Colors.black,
                                              size: 26.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'DISCOVER',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: Colors.black,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation2']!,
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'COMMUNITY_PAGE_PayOption_ON_TAP');
                                      logFirebaseEvent('PayOption_navigate_to');

                                      context.pushNamed('addPost');
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: Colors.black,
                                              size: 26.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'ADD POST',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: Colors.black,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation3']!,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).animateOnActionTrigger(
                          animationsMap['containerOnActionTriggerAnimation1']!,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'COMMUNITY_PAGE_ExpandableFAB_ON_TAP');
                              if (FFAppState().isOptionExpanded) {
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation1'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation1']!
                                      .controller
                                      .reverse();
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation2'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation2']!
                                      .controller
                                      .reverse();
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation3'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation3']!
                                      .controller
                                      .reverse();
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'transformOnActionTriggerAnimation'] !=
                                    null) {
                                  animationsMap[
                                          'transformOnActionTriggerAnimation']!
                                      .controller
                                      .reverse();
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation'] !=
                                    null) {
                                  animationsMap['iconOnActionTriggerAnimation']!
                                      .controller
                                      .reverse();
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_update_app_state');
                                FFAppState().isOptionExpanded = false;
                              } else {
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation1'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation1']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation2'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation2']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation3'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation3']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'transformOnActionTriggerAnimation'] !=
                                    null) {
                                  animationsMap[
                                          'transformOnActionTriggerAnimation']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_widget_animation');
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation'] !=
                                    null) {
                                  animationsMap['iconOnActionTriggerAnimation']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                                logFirebaseEvent(
                                    'ExpandableFAB_update_app_state');
                                FFAppState().isOptionExpanded = true;
                              }
                            },
                            child: ClipOval(
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFD72AF2),
                                      FlutterFlowTheme.of(context).tertiary
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.87, -1.0),
                                    end: AlignmentDirectional(-0.87, 1.0),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Transform.rotate(
                                      angle: -0.7854,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.send_rounded,
                                          color: Colors.white,
                                          size: 24.0,
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'transformOnActionTriggerAnimation']!,
                                    ),
                                    Icon(
                                      Icons.close_rounded,
                                      color: Colors.white,
                                      size: 24.0,
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'iconOnActionTriggerAnimation']!,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
