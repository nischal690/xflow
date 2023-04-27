import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'createyourprofile4_model.dart';
export 'createyourprofile4_model.dart';

class Createyourprofile4Widget extends StatefulWidget {
  const Createyourprofile4Widget({Key? key}) : super(key: key);

  @override
  _Createyourprofile4WidgetState createState() =>
      _Createyourprofile4WidgetState();
}

class _Createyourprofile4WidgetState extends State<Createyourprofile4Widget> {
  late Createyourprofile4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Createyourprofile4Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'createyourprofile4'});
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
        title: 'createyourprofile4',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: false,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Icon(
                                  Icons.arrow_back_outlined,
                                  color: Color(0xFF101010),
                                  size: 24.0,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Text(
                                  '4/4 Step',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Color(0xFF858282),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Finally your location',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Nunito',
                                          lineHeight: 1.5,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      'Residential Location',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: Color(0xFF333333),
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 6.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Image.asset(
                                            'assets/images/info-circle.png',
                                            width: 16.0,
                                            height: 16.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 0.0, 0.0, 0.0),
                                            child: GradientText(
                                              'This helps xflow recommend nearby people travelling ',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 14.0,
                                                        lineHeight: 1.5,
                                                      ),
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                FlutterFlowTheme.of(context)
                                                    .secondary
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        border: Border.all(
                                          color: Color(0xFFF1F1F1),
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: SelectionArea(
                                            child: Text(
                                          valueOrDefault<String>(
                                            _model.placePickerValue.address,
                                            'N/A',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        )),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 6.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            (await _model.googleMapsController
                                                    .future)
                                                .animateCamera(
                                                    CameraUpdate.newLatLng(place
                                                        .latLng
                                                        .toGoogleMaps()));
                                          },
                                          defaultText: 'Select Location',
                                          icon: Icon(
                                            Icons.place,
                                            color: Color(0xFFDAF377),
                                            size: 16.0,
                                          ),
                                          buttonOptions: FFButtonOptions(
                                            width: 200.0,
                                            height: 40.0,
                                            color: Colors.black,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Color(0xFFDAF377),
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 18.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 250.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Builder(builder: (context) {
                                        final _googleMapMarker =
                                            _model.placePickerValue.latLng;
                                        return FlutterFlowGoogleMap(
                                          controller:
                                              _model.googleMapsController,
                                          onCameraIdle: (latLng) => setState(
                                              () => _model.googleMapsCenter =
                                                  latLng),
                                          initialLocation: _model
                                                  .googleMapsCenter ??=
                                              _model.placePickerValue.latLng,
                                          markers: [
                                            if (_googleMapMarker != null)
                                              FlutterFlowMarker(
                                                _googleMapMarker.serialize(),
                                                _googleMapMarker,
                                              ),
                                          ],
                                          markerColor: GoogleMarkerColor.violet,
                                          mapType: MapType.normal,
                                          style: GoogleMapStyle.standard,
                                          initialZoom: 14.0,
                                          allowInteraction: true,
                                          allowZoom: true,
                                          showZoomControls: true,
                                          showLocation: true,
                                          showCompass: false,
                                          showMapToolbar: false,
                                          showTraffic: false,
                                          centerMapOnMarkerTap: true,
                                        );
                                      }),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Note: Map pin cannot be moved, \nonly used to show selected location.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                      ),
                                    ],
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onDoubleTap: () async {
                                    logFirebaseEvent(
                                        'CREATEYOURPROFILE4_NEXT_BTN_ON_DOUBLE_TA');
                                    logFirebaseEvent('Button_backend_call');

                                    final usersUpdateData =
                                        createUsersRecordData(
                                      residentialLocation: createLocationStruct(
                                        latLang: _model.placePickerValue.latLng,
                                        name: _model.placePickerValue.name,
                                        address:
                                            _model.placePickerValue.address,
                                        city: _model.placePickerValue.city,
                                        state: _model.placePickerValue.state,
                                        country:
                                            _model.placePickerValue.country,
                                        zipcode:
                                            _model.placePickerValue.zipCode,
                                        clearUnsetFields: true,
                                      ),
                                    );
                                    await currentUserReference!
                                        .update(usersUpdateData);
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed('HomePage');
                                  },
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'CREATEYOURPROFILE4_PAGE_NEXT_BTN_ON_TAP');
                                      if (_model.placePickerValue.latLng !=
                                          null) {
                                        logFirebaseEvent('Button_backend_call');

                                        final usersUpdateData =
                                            createUsersRecordData(
                                          residentialLocation:
                                              createLocationStruct(
                                            latLang:
                                                _model.placePickerValue.latLng,
                                            name: _model.placePickerValue.name,
                                            address:
                                                _model.placePickerValue.address,
                                            city: _model.placePickerValue.city,
                                            state:
                                                _model.placePickerValue.state,
                                            country:
                                                _model.placePickerValue.country,
                                            zipcode:
                                                _model.placePickerValue.zipCode,
                                            clearUnsetFields: true,
                                          ),
                                        );
                                        await currentUserReference!
                                            .update(usersUpdateData);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed('HomePage');

                                        return;
                                      } else {
                                        logFirebaseEvent(
                                            'Button_show_snack_bar');
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Please enter your residential location to proceed',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                        return;
                                      }
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
  }
}
