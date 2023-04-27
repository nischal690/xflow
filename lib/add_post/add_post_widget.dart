import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/upload_postphotos_widget.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_post_model.dart';
export 'add_post_model.dart';

class AddPostWidget extends StatefulWidget {
  const AddPostWidget({
    Key? key,
    this.upiID,
    this.name,
  }) : super(key: key);

  final String? upiID;
  final String? name;

  @override
  _AddPostWidgetState createState() => _AddPostWidgetState();
}

class _AddPostWidgetState extends State<AddPostWidget> {
  late AddPostModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddPostModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'addPost'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADD_POST_PAGE_addPost_ON_INIT_STATE');
      logFirebaseEvent('addPost_backend_call');

      final usersUpdateData = {
        'logincount': FieldValue.increment(1),
      };
      await currentUserReference!.update(usersUpdateData);
    });

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
        title: 'addPost',
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
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Color(0xFF101213),
                      size: 24.0,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'What’s Up?',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      Text(
                        'Time to tell the world around',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  Text(
                    '              ',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
              actions: [],
              centerTitle: true,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0x15000000),
                                        offset: Offset(0.0, 6.0),
                                        spreadRadius: 1.0,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 20.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlutterFlowPlacePicker(
                                          iOSGoogleMapsApiKey:
                                              'AIzaSyA44JY5X7CLrSBbKYryOqQRqzv3dutrSO8',
                                          androidGoogleMapsApiKey:
                                              'AIzaSyBCqaQ4W1uuoe7a5Fl8LryB4iAIMxuJFXY',
                                          webGoogleMapsApiKey:
                                              'AIzaSyDk_Hq8i5sr_Jac38YnoptfnnaPLb2UnRo',
                                          onSelect: (place) async {
                                            setState(() => _model
                                                .placePickerValue = place);
                                          },
                                          defaultText: 'Select Location',
                                          icon: Icon(
                                            Icons.place,
                                            color: Colors.black,
                                            size: 12.0,
                                          ),
                                          buttonOptions: FFButtonOptions(
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.black,
                                                      fontSize: 12.0,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                        FlutterFlowChoiceChips(
                                          options: [
                                            ChipData('Post'),
                                            ChipData('Service')
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.choiceChipsValue =
                                                  val?.first),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor: Color(0xF6E2F692),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.black,
                                                    ),
                                            iconColor: Colors.white,
                                            iconSize: 18.0,
                                            elevation: 4.0,
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Color(0xF6000000),
                                                    ),
                                            iconColor: Color(0x00000000),
                                            iconSize: 18.0,
                                            elevation: 4.0,
                                          ),
                                          chipSpacing: 20.0,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                        ),
                                        TextFormField(
                                          controller: _model.textController1,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                'What’s on your mind? Text here or tap record',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Color(0xFFB2B2B2),
                                                      fontSize: 12.0,
                                                      lineHeight: 1.5,
                                                    ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          textAlign: TextAlign.start,
                                          keyboardType: TextInputType.multiline,
                                          validator: _model
                                              .textController1Validator
                                              .asValidator(context),
                                        ),
                                        if (FFAppState().postPhotos.length != 0)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: Builder(
                                              builder: (context) {
                                                final postphotos = FFAppState()
                                                    .postPhotos
                                                    .toList();
                                                return Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      postphotos.length,
                                                      (postphotosIndex) {
                                                    final postphotosItem =
                                                        postphotos[
                                                            postphotosIndex];
                                                    return Stack(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, -1.0),
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                            child:
                                                                Image.network(
                                                              postphotosItem,
                                                              width: 100.0,
                                                              height: 100.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.99, 0.95),
                                                          child: InkWell(
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
                                                                  'ADD_POST_PAGE_Container_7hk8ano4_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Container_update_app_state');
                                                              setState(() {
                                                                FFAppState()
                                                                    .removeFromPostPhotos(
                                                                        postphotosItem);
                                                              });
                                                            },
                                                            child: Container(
                                                              width: 35.0,
                                                              height: 35.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .close_outlined,
                                                                color: Colors
                                                                    .black,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                          ),
                                        if (FFAppState().video != null &&
                                            FFAppState().video != '')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child:
                                                        FlutterFlowVideoPlayer(
                                                      path: FFAppState().video,
                                                      videoType:
                                                          VideoType.network,
                                                      autoPlay: false,
                                                      looping: true,
                                                      showControls: true,
                                                      allowFullScreen: true,
                                                      allowPlaybackSpeedMenu:
                                                          false,
                                                      lazyLoad: true,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.99, -0.94),
                                                    child: Container(
                                                      width: 35.0,
                                                      height: 35.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
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
                                                              'ADD_POST_PAGE_Icon_pignz687_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Icon_update_app_state');
                                                          setState(() {
                                                            FFAppState().video =
                                                                '';
                                                          });
                                                        },
                                                        child: Icon(
                                                          Icons.close_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        if (FFAppState().audio != null &&
                                            FFAppState().audio != '')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: FlutterFlowAudioPlayer(
                                              audio: Audio.network(
                                                FFAppState().audio,
                                                metas: Metas(
                                                  id: 'sample3.mp3-e6f1bd43',
                                                ),
                                              ),
                                              titleTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              playbackDurationTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF9D9D9D),
                                                        fontSize: 12.0,
                                                      ),
                                              fillColor: Color(0xFFEEEEEE),
                                              playbackButtonColor:
                                                  Color(0xFFDAF377),
                                              activeTrackColor:
                                                  Color(0xFFDAF377),
                                              elevation: 4.0,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 20.0),
                                  child: Text(
                                    'Add Tag ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 12.0,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0x09000000),
                                        offset: Offset(0.0, 6.0),
                                        spreadRadius: 1.0,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(100.0),
                                    border: Border.all(
                                      color: Color(0xFFF1F1F1),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller: _model.textController2,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Click “✓” to add your post tag',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFFB2B2B2),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
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
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
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
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            validator: _model
                                                .textController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 5.0, 5.0, 5.0),
                                          child: Container(
                                            width: 40.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF1A1C26),
                                              shape: BoxShape.circle,
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Icon_5pighlou_ON_TAP');
                                                logFirebaseEvent(
                                                    'Icon_update_app_state');
                                                setState(() {
                                                  FFAppState().addToPosttags(
                                                      _model.textController2
                                                          .text);
                                                });
                                                logFirebaseEvent(
                                                    'Icon_clear_text_fields');
                                                setState(() {
                                                  _model.textController2
                                                      ?.clear();
                                                });
                                              },
                                              child: Icon(
                                                Icons.add,
                                                color: Color(0xFFE2F692),
                                                size: 18.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (FFAppState().posttags.length > 0)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDAF377),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 10.0),
                                          child: Builder(
                                            builder: (context) {
                                              final posttags = FFAppState()
                                                  .posttags
                                                  .toList();
                                              return Wrap(
                                                spacing: 10.0,
                                                runSpacing: 10.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    posttags.length,
                                                    (posttagsIndex) {
                                                  final posttagsItem =
                                                      posttags[posttagsIndex];
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      3.0,
                                                                      1.0,
                                                                      3.0),
                                                          child: Text(
                                                            posttagsItem,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: Color(
                                                                      0xFF333333),
                                                                  fontSize:
                                                                      11.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      6.33,
                                                                      6.33,
                                                                      6.33),
                                                          child: InkWell(
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
                                                                  'ADD_POST_PAGE_Image_z7cw0qhb_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Image_update_app_state');
                                                              setState(() {
                                                                FFAppState()
                                                                    .removeFromPosttags(
                                                                        posttagsItem);
                                                              });
                                                            },
                                                            child: Image.asset(
                                                              'assets/images/close-circle.png',
                                                              width: 13.3,
                                                              height: 13.3,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 16.0),
                                  child: Text(
                                    'What is this ? ',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x00DAF377),
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Wrap(
                                        spacing: 10.0,
                                        runSpacing: 10.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Visibility(
                                            visible:
                                                FFAppState().tag != 'General',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_dkulhjlj_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'General';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'General',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF4C67AD),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag == 'General',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_bdbxp91q_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'General',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF4C67AD),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag != 'Safety',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_bmtshsbz_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'Safety';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Safety',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFDD4343),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag == 'Safety',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_w3b8emqz_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Safety',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFDD4343),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag != 'Guide',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_23g0gcll_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'Guide';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Guide',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFEABB16),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag == 'Guide',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_txw7fcrp_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Guide',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFEABB16),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: FFAppState().tag != 'Food',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_ch6bc9dz_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'Food';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Food',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: FFAppState().tag == 'Food',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_7p4s291w_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Food',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag != 'Event',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_cvylwub7_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'Event';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Event',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFC82092),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag == 'Event',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_8ms5xqdf_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Event',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFC82092),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: FFAppState().tag != 'News',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_cu4iw762_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'News';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'News',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF1665FF),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: FFAppState().tag == 'News',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_r73mr7ii_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'News',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF1665FF),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag != 'Adventure',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_qrs8uxiu_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag =
                                                      'Adventure';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Adventure',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF333333),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag == 'Adventure',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_vurqx8ti_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Adventure',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF333333),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag != 'Culture',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_pt6mv9ma_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'Culture';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Culture',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFFF9900),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag == 'Culture',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_mmyp3vcd_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Culture',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFFF9900),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag != 'Luxury',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_aw87stk8_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'Luxury';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Luxury ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF7000FF),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag == 'Luxury',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_h6ffxyji_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Luxury ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF7000FF),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag != 'Offer',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_6pj9j21o_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'Offer';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Offer',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFC82092),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag == 'Offer',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_tef2ui0k_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Offer',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFC82092),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag != 'Other',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_ihad9wzl_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = 'Other';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0x2C000000),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Other',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF7000FF),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible:
                                                FFAppState().tag == 'Other',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ADD_POST_PAGE_Container_rrxutmuo_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_update_app_state');
                                                setState(() {
                                                  FFAppState().tag = '';
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: Color(0xFF00FF0F),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 7.0, 14.0, 7.0),
                                                  child: Text(
                                                    'Other',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF7000FF),
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
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
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFFEEEEEE),
                                    width: 1.0,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'ADD_POST_PAGE_Icon_yfjxj6qj_ON_TAP');
                                    logFirebaseEvent(
                                        'Icon_upload_file_to_firebase');
                                    final selectedFile = await selectFile(
                                        allowedExtensions: ['mp3']);
                                    if (selectedFile != null) {
                                      setState(
                                          () => _model.isDataUploading1 = true);
                                      FFUploadedFile? selectedUploadedFile;
                                      String? downloadUrl;
                                      try {
                                        selectedUploadedFile = FFUploadedFile(
                                          name: selectedFile.storagePath
                                              .split('/')
                                              .last,
                                          bytes: selectedFile.bytes,
                                        );
                                        downloadUrl = await uploadData(
                                            selectedFile.storagePath,
                                            selectedFile.bytes);
                                      } finally {
                                        _model.isDataUploading1 = false;
                                      }
                                      if (selectedUploadedFile != null &&
                                          downloadUrl != null) {
                                        setState(() {
                                          _model.uploadedLocalFile1 =
                                              selectedUploadedFile!;
                                          _model.uploadedFileUrl1 =
                                              downloadUrl!;
                                        });
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }

                                    logFirebaseEvent('Icon_update_app_state');
                                    setState(() {
                                      FFAppState().audio =
                                          _model.uploadedFileUrl2;
                                    });
                                  },
                                  child: Icon(
                                    FFIcons.kmicrophone2Converted,
                                    color: Color(0xFF026142),
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
                                  logFirebaseEvent(
                                      'ADD_POST_PAGE_Container_eyh1vyho_ON_TAP');
                                  logFirebaseEvent('Container_bottom_sheet');
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.white,
                                    context: context,
                                    builder: (bottomSheetContext) {
                                      return GestureDetector(
                                        onTap: () => FocusScope.of(context)
                                            .requestFocus(_unfocusNode),
                                        child: Padding(
                                          padding:
                                              MediaQuery.of(bottomSheetContext)
                                                  .viewInsets,
                                          child: Container(
                                            height: 290.0,
                                            child: UploadPostphotosWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xFFEEEEEE),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Icon(
                                    FFIcons.kcamera,
                                    color: Color(0xFF026142),
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFFEEEEEE),
                                    width: 1.0,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'ADD_POST_PAGE_Icon_y1z062ob_ON_TAP');
                                    logFirebaseEvent(
                                        'Icon_upload_media_to_firebase');
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: false,
                                      allowVideo: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading2 = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];
                                      var downloadUrls = <String>[];
                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();

                                        downloadUrls = (await Future.wait(
                                          selectedMedia.map(
                                            (m) async => await uploadData(
                                                m.storagePath, m.bytes),
                                          ),
                                        ))
                                            .where((u) => u != null)
                                            .map((u) => u!)
                                            .toList();
                                      } finally {
                                        _model.isDataUploading2 = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile2 =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl2 =
                                              downloadUrls.first;
                                        });
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }

                                    logFirebaseEvent('Icon_update_app_state');
                                    setState(() {
                                      FFAppState().video =
                                          _model.uploadedFileUrl2;
                                    });
                                  },
                                  child: Icon(
                                    FFIcons.kvideoConverted,
                                    color: Color(0xFF026142),
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFFEEEEEE),
                                    width: 1.0,
                                  ),
                                ),
                                child: Icon(
                                  FFIcons.kchartSuccessConverted,
                                  color: Color(0x5C026142),
                                  size: 24.0,
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'ADD_POST_PAGE_POST_BTN_ON_TAP');
                                  currentUserLocationValue =
                                      await getCurrentUserLocation(
                                          defaultLocation: LatLng(0.0, 0.0));
                                  var _shouldSetState = false;
                                  if ((/* NOT RECOMMENDED */ _model
                                              .textController1.text ==
                                          'true') ||
                                      (_model.uploadedFileUrl1 != null &&
                                          _model.uploadedFileUrl1 != '') ||
                                      (_model.uploadedFileUrl2 != null &&
                                          _model.uploadedFileUrl2 != '') ||
                                      (FFAppState().postPhotos.length != 0) ||
                                      (FFAppState().video != null &&
                                          FFAppState().video != '')) {
                                    if (_model.placePickerValue.latLng !=
                                        null) {
                                      if (FFAppState().tag != null &&
                                          FFAppState().tag != '') {
                                        logFirebaseEvent('Button_backend_call');

                                        final userspostCreateData1 = {
                                          ...createUserspostRecordData(
                                            content:
                                                _model.textController1.text,
                                            userref: currentUserReference,
                                            timeanddate: getCurrentTimestamp,
                                            tag: FFAppState().tag,
                                            video: FFAppState().video,
                                            audio: FFAppState().audio,
                                            location: createLocationStruct(
                                              latLang: _model
                                                  .placePickerValue.latLng,
                                              name:
                                                  _model.placePickerValue.name,
                                              address: _model
                                                  .placePickerValue.address,
                                              city:
                                                  _model.placePickerValue.city,
                                              state:
                                                  _model.placePickerValue.state,
                                              country: _model
                                                  .placePickerValue.country,
                                              zipcode: _model
                                                  .placePickerValue.zipCode,
                                              clearUnsetFields: false,
                                              create: true,
                                            ),
                                            type: _model.choiceChipsValue,
                                          ),
                                          'postTags': FFAppState().posttags,
                                          'photos': FFAppState().postPhotos,
                                        };
                                        await UserspostRecord.collection
                                            .doc()
                                            .set(userspostCreateData1);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed('Community');
                                      } else {
                                        logFirebaseEvent('Button_backend_call');

                                        final userspostCreateData2 = {
                                          ...createUserspostRecordData(
                                            content:
                                                _model.textController1.text,
                                            userref: currentUserReference,
                                            timeanddate: getCurrentTimestamp,
                                            tag: 'General',
                                            video: FFAppState().video,
                                            audio: FFAppState().audio,
                                            location: createLocationStruct(
                                              latLang: _model
                                                  .placePickerValue.latLng,
                                              name:
                                                  _model.placePickerValue.name,
                                              address: _model
                                                  .placePickerValue.address,
                                              city:
                                                  _model.placePickerValue.city,
                                              state:
                                                  _model.placePickerValue.state,
                                              country: _model
                                                  .placePickerValue.country,
                                              zipcode: _model
                                                  .placePickerValue.zipCode,
                                              clearUnsetFields: false,
                                              create: true,
                                            ),
                                            type: _model.choiceChipsValue,
                                          ),
                                          'postTags': FFAppState().posttags,
                                          'photos': FFAppState().postPhotos,
                                        };
                                        await UserspostRecord.collection
                                            .doc()
                                            .set(userspostCreateData2);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed('Community');
                                      }
                                    } else {
                                      if (FFAppState().tag != null &&
                                          FFAppState().tag != '') {
                                        logFirebaseEvent('Button_backend_call');
                                        _model.country =
                                            await CurrentlatlangcountryCall
                                                .call(
                                          lon: functions.latlangtolon(
                                              currentUserLocationValue!),
                                          lat: functions.latlangtolat(
                                              currentUserLocationValue!),
                                        );
                                        _shouldSetState = true;
                                        logFirebaseEvent('Button_wait__delay');
                                        await Future.delayed(
                                            const Duration(milliseconds: 2000));
                                        logFirebaseEvent('Button_backend_call');

                                        final userspostCreateData3 = {
                                          ...createUserspostRecordData(
                                            content:
                                                _model.textController1.text,
                                            userref: currentUserReference,
                                            timeanddate: getCurrentTimestamp,
                                            tag: FFAppState().tag,
                                            video: FFAppState().video,
                                            audio: FFAppState().audio,
                                            location: createLocationStruct(
                                              latLang: currentUserLocationValue,
                                              name:
                                                  _model.placePickerValue.name,
                                              address: _model
                                                  .placePickerValue.address,
                                              city:
                                                  _model.placePickerValue.city,
                                              state:
                                                  _model.placePickerValue.state,
                                              country: CurrentlatlangcountryCall
                                                  .currentcountry(
                                                (_model.country1?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              zipcode: _model
                                                  .placePickerValue.zipCode,
                                              clearUnsetFields: false,
                                              create: true,
                                            ),
                                            type: _model.choiceChipsValue,
                                          ),
                                          'postTags': FFAppState().posttags,
                                          'photos': FFAppState().postPhotos,
                                        };
                                        await UserspostRecord.collection
                                            .doc()
                                            .set(userspostCreateData3);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed('Community');
                                      } else {
                                        logFirebaseEvent('Button_backend_call');
                                        _model.country1 =
                                            await CurrentlatlangcountryCall
                                                .call(
                                          lon: functions.latlangtolon(
                                              currentUserLocationValue!),
                                          lat: functions.latlangtolat(
                                              currentUserLocationValue!),
                                        );
                                        _shouldSetState = true;
                                        logFirebaseEvent('Button_wait__delay');
                                        await Future.delayed(
                                            const Duration(milliseconds: 2000));
                                        logFirebaseEvent('Button_backend_call');

                                        final userspostCreateData4 = {
                                          ...createUserspostRecordData(
                                            content:
                                                _model.textController1.text,
                                            userref: currentUserReference,
                                            timeanddate: getCurrentTimestamp,
                                            tag: 'General',
                                            video: FFAppState().video,
                                            audio: FFAppState().audio,
                                            location: createLocationStruct(
                                              latLang: currentUserLocationValue,
                                              name:
                                                  _model.placePickerValue.name,
                                              address: _model
                                                  .placePickerValue.address,
                                              city:
                                                  _model.placePickerValue.city,
                                              state:
                                                  _model.placePickerValue.state,
                                              country: CurrentlatlangcountryCall
                                                  .currentcountry(
                                                (_model.country1?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              zipcode: _model
                                                  .placePickerValue.zipCode,
                                              clearUnsetFields: false,
                                              create: true,
                                            ),
                                            type: _model.choiceChipsValue,
                                          ),
                                          'postTags': FFAppState().posttags,
                                          'photos': FFAppState().postPhotos,
                                        };
                                        await UserspostRecord.collection
                                            .doc()
                                            .set(userspostCreateData4);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed('Community');
                                      }
                                    }
                                  } else {
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Please enter a message, video, or photo before posting.',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) setState(() {});
                                },
                                text: 'Post',
                                options: FFButtonOptions(
                                  width: 87.0,
                                  height: 50.0,
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
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(100.0),
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
            ),
          ),
        ));
  }
}
