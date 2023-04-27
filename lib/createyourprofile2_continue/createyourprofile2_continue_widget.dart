import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/uploaddocument_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'createyourprofile2_continue_model.dart';
export 'createyourprofile2_continue_model.dart';

class Createyourprofile2ContinueWidget extends StatefulWidget {
  const Createyourprofile2ContinueWidget({Key? key}) : super(key: key);

  @override
  _Createyourprofile2ContinueWidgetState createState() =>
      _Createyourprofile2ContinueWidgetState();
}

class _Createyourprofile2ContinueWidgetState
    extends State<Createyourprofile2ContinueWidget> {
  late Createyourprofile2ContinueModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Createyourprofile2ContinueModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'createyourprofile2Continue'});
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

    return StreamBuilder<List<IdverificationRecord>>(
      stream: queryIdverificationRecord(
        parent: currentUserReference,
        singleRecord: true,
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
        List<IdverificationRecord>
            createyourprofile2ContinueIdverificationRecordList = snapshot.data!;
        final createyourprofile2ContinueIdverificationRecord =
            createyourprofile2ContinueIdverificationRecordList.isNotEmpty
                ? createyourprofile2ContinueIdverificationRecordList.first
                : null;
        return Title(
            title: 'createyourprofile2Continue',
            color: FlutterFlowTheme.of(context).primary,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Text(
                                    '2/4 Step',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF858282),
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.03, 0.0),
                                  child: Container(
                                    width: 56.0,
                                    height: 56.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
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
                                            'CREATEYOURPROFILE2_CONTINUE_Icon_gy2f99h');
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
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 8.0),
                                        child: Text(
                                          FFAppState().Documenttype,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Nunito',
                                                fontSize: 30.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Container(
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
                                          borderRadius:
                                              BorderRadius.circular(28.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 16.0, 20.0, 16.0),
                                          child: Wrap(
                                            spacing: 0.0,
                                            runSpacing: 0.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 6.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.info_outlined,
                                                      color: Color(0x40000000),
                                                      size: 18.0,
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: GradientText(
                                                          'Upload a photo or scan of your ${FFAppState().Documenttype}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 14.0,
                                                              ),
                                                          colors: [
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary
                                                          ],
                                                          gradientDirection:
                                                              GradientDirection
                                                                  .ltr,
                                                          gradientType:
                                                              GradientType
                                                                  .linear,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 200.0,
                                                decoration: BoxDecoration(),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: Stack(
                                                    children: [
                                                      PageView(
                                                        controller: _model
                                                                .pageViewController ??=
                                                            PageController(
                                                                initialPage: 0),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'CREATEYOURPROFILE2_CONTINUE_Column_2ntxf');
                                                              logFirebaseEvent(
                                                                  'Column_bottom_sheet');
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                barrierColor: Color(
                                                                    0x00000000),
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (bottomSheetContext) {
                                                                  return GestureDetector(
                                                                    onTap: () => FocusScope.of(
                                                                            context)
                                                                        .requestFocus(
                                                                            _unfocusNode),
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery.of(
                                                                              bottomSheetContext)
                                                                          .viewInsets,
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            290.0,
                                                                        child:
                                                                            UploaddocumentWidget(),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  setState(
                                                                      () {}));
                                                            },
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 160.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFF0030F6),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child: Stack(
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
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'CREATEYOURPROFILE2_CONTINUE_Column_sh65j');
                                                                          logFirebaseEvent(
                                                                              'Column_bottom_sheet');
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            barrierColor:
                                                                                Color(0x00000000),
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (bottomSheetContext) {
                                                                              return GestureDetector(
                                                                                onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
                                                                                child: Padding(
                                                                                  padding: MediaQuery.of(bottomSheetContext).viewInsets,
                                                                                  child: Container(
                                                                                    height: 290.0,
                                                                                    child: UploaddocumentWidget(),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              setState(() {}));
                                                                        },
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: FlutterFlowIconButton(
                                                                                borderColor: Colors.transparent,
                                                                                borderWidth: 1.0,
                                                                                buttonSize: 120.0,
                                                                                icon: FaIcon(
                                                                                  FontAwesomeIcons.upload,
                                                                                  color: Color(0xFFCBF445),
                                                                                  size: 60.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('CREATEYOURPROFILE2_CONTINUE_upload_ICN_O');
                                                                                  logFirebaseEvent('IconButton_bottom_sheet');
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    barrierColor: Color(0x00000000),
                                                                                    enableDrag: false,
                                                                                    context: context,
                                                                                    builder: (bottomSheetContext) {
                                                                                      return GestureDetector(
                                                                                        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
                                                                                        child: Padding(
                                                                                          padding: MediaQuery.of(bottomSheetContext).viewInsets,
                                                                                          child: Container(
                                                                                            height: 290.0,
                                                                                            child: UploaddocumentWidget(),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              'Upload the front side of your ${FFAppState().Documenttype}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Image
                                                                          .network(
                                                                        FFAppState()
                                                                            .frontSide,
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: 160.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF0030F6),
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'CREATEYOURPROFILE2_CONTINUE_Column_wj6kq');
                                                                    logFirebaseEvent(
                                                                        'Column_bottom_sheet');
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white,
                                                                      barrierColor:
                                                                          Color(
                                                                              0x00000000),
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (bottomSheetContext) {
                                                                        return GestureDetector(
                                                                          onTap: () =>
                                                                              FocusScope.of(context).requestFocus(_unfocusNode),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.of(bottomSheetContext).viewInsets,
                                                                            child:
                                                                                Container(
                                                                              height: 290.0,
                                                                              child: UploaddocumentWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));
                                                                  },
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            FlutterFlowIconButton(
                                                                          borderColor:
                                                                              Colors.transparent,
                                                                          borderRadius:
                                                                              60.0,
                                                                          borderWidth:
                                                                              1.0,
                                                                          buttonSize:
                                                                              120.0,
                                                                          fillColor:
                                                                              Color(0x00E9F8AD),
                                                                          icon:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.upload,
                                                                            color:
                                                                                Color(0xFFCBF445),
                                                                            size:
                                                                                60.0,
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            print('IconButton pressed ...');
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Upload the back side of your ${FFAppState().Documenttype}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Nunito',
                                                                              color: Colors.black,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Image.network(
                                                                  FFAppState()
                                                                      .backSide,
                                                                  width: double
                                                                      .infinity,
                                                                  height: double
                                                                      .infinity,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      20.0),
                                                          child: smooth_page_indicator
                                                              .SmoothPageIndicator(
                                                            controller: _model
                                                                    .pageViewController ??=
                                                                PageController(
                                                                    initialPage:
                                                                        0),
                                                            count: 2,
                                                            axisDirection:
                                                                Axis.horizontal,
                                                            onDotClicked:
                                                                (i) async {
                                                              await _model
                                                                  .pageViewController!
                                                                  .animateToPage(
                                                                i,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        500),
                                                                curve:
                                                                    Curves.ease,
                                                              );
                                                            },
                                                            effect: smooth_page_indicator
                                                                .ExpandingDotsEffect(
                                                              expansionFactor:
                                                                  2.0,
                                                              spacing: 8.0,
                                                              radius: 16.0,
                                                              dotWidth: 8.0,
                                                              dotHeight: 8.0,
                                                              dotColor: Color(
                                                                  0xFF9E9E9E),
                                                              activeDotColor:
                                                                  Color(
                                                                      0xFF3FB545),
                                                              paintStyle:
                                                                  PaintingStyle
                                                                      .fill,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 24.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'CREATEYOURPROFILE2_CONTINUE_NEXT_BTN_ON_');
                                        logFirebaseEvent('Button_backend_call');

                                        final idverificationUpdateData =
                                            createIdverificationRecordData(
                                          idissuedcountry:
                                              FFAppState().Countryname,
                                          idtype: FFAppState().Documenttype,
                                          idfront: FFAppState().frontSide,
                                          idback: FFAppState().backSide,
                                          idpdf: FFAppState().pdf,
                                        );
                                        await createyourprofile2ContinueIdverificationRecord!
                                            .reference
                                            .update(idverificationUpdateData);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed('createyourprofile3');
                                      },
                                      text: 'Next',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Nunito',
                                              color: Color(0xFFDAF377),
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
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
            ));
      },
    );
  }
}
