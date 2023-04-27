import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'uploaddocument_model.dart';
export 'uploaddocument_model.dart';

class UploaddocumentWidget extends StatefulWidget {
  const UploaddocumentWidget({Key? key}) : super(key: key);

  @override
  _UploaddocumentWidgetState createState() => _UploaddocumentWidgetState();
}

class _UploaddocumentWidgetState extends State<UploaddocumentWidget> {
  late UploaddocumentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploaddocumentModel());

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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SelectionArea(
                    child: Text(
                  'Upload ${FFAppState().Documenttype}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        lineHeight: 1.5,
                      ),
                )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 6.0, 24.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  FFIcons.kinfoCircle,
                  color: Color(0xFFD7D7D7),
                  size: 16.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                  child: GradientText(
                    'File must be less than 25Mb',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Nunito',
                          fontSize: 11.0,
                          fontWeight: FontWeight.w500,
                          lineHeight: 1.75,
                        ),
                    colors: [
                      FlutterFlowTheme.of(context).primary,
                      FlutterFlowTheme.of(context).secondary
                    ],
                    gradientDirection: GradientDirection.btt,
                    gradientType: GradientType.linear,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 20.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('UPLOADDOCUMENT_Column_qec89orr_ON_TAP');
                    logFirebaseEvent('Column_upload_media_to_firebase');
                    final selectedMedia = await selectMedia(
                      imageQuality: 100,
                      multiImage: false,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      setState(() => _model.isDataUploading1 = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];
                      var downloadUrls = <String>[];
                      try {
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();

                        downloadUrls = (await Future.wait(
                          selectedMedia.map(
                            (m) async =>
                                await uploadData(m.storagePath, m.bytes),
                          ),
                        ))
                            .where((u) => u != null)
                            .map((u) => u!)
                            .toList();
                      } finally {
                        _model.isDataUploading1 = false;
                      }
                      if (selectedUploadedFiles.length ==
                              selectedMedia.length &&
                          downloadUrls.length == selectedMedia.length) {
                        setState(() {
                          _model.uploadedLocalFile1 =
                              selectedUploadedFiles.first;
                          _model.uploadedFileUrl1 = downloadUrls.first;
                        });
                      } else {
                        setState(() {});
                        return;
                      }
                    }

                    logFirebaseEvent('Column_update_app_state');
                    FFAppState().update(() {
                      FFAppState().frontSide = _model.uploadedFileUrl1;
                    });
                    logFirebaseEvent('Column_bottom_sheet');
                    Navigator.pop(context);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F8FF),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          FFIcons.kcamera,
                          color: Color(0xFF0094D4),
                          size: 24.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                        child: SelectionArea(
                            child: Text(
                          'Camera',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.75,
                                  ),
                        )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(48.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('UPLOADDOCUMENT_Column_c6hnr7d4_ON_TAP');
                      logFirebaseEvent('Column_upload_media_to_firebase');
                      final selectedMedia = await selectMedia(
                        mediaSource: MediaSource.photoGallery,
                        multiImage: false,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        setState(() => _model.isDataUploading2 = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];
                        var downloadUrls = <String>[];
                        try {
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();

                          downloadUrls = (await Future.wait(
                            selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes),
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
                            downloadUrls.length == selectedMedia.length) {
                          setState(() {
                            _model.uploadedLocalFile2 =
                                selectedUploadedFiles.first;
                            _model.uploadedFileUrl2 = downloadUrls.first;
                          });
                        } else {
                          setState(() {});
                          return;
                        }
                      }

                      logFirebaseEvent('Column_update_app_state');
                      FFAppState().update(() {
                        FFAppState().frontSide = _model.uploadedFileUrl1;
                      });
                      logFirebaseEvent('Column_bottom_sheet');
                      Navigator.pop(context);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF4F8FF),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            FFIcons.kgalleryExport,
                            color: Color(0xFF0094D4),
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 6.0, 0.0, 0.0),
                          child: SelectionArea(
                              child: Text(
                            'Gallery',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  lineHeight: 1.75,
                                ),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(48.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('UPLOADDOCUMENT_Column_p2wobli1_ON_TAP');
                      logFirebaseEvent('Column_upload_file_to_firebase');
                      final selectedFile =
                          await selectFile(allowedExtensions: ['pdf']);
                      if (selectedFile != null) {
                        setState(() => _model.isDataUploading3 = true);
                        FFUploadedFile? selectedUploadedFile;
                        String? downloadUrl;
                        try {
                          showUploadMessage(
                            context,
                            'Uploading file...',
                            showLoading: true,
                          );
                          selectedUploadedFile = FFUploadedFile(
                            name: selectedFile.storagePath.split('/').last,
                            bytes: selectedFile.bytes,
                          );
                          downloadUrl = await uploadData(
                              selectedFile.storagePath, selectedFile.bytes);
                        } finally {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          _model.isDataUploading3 = false;
                        }
                        if (selectedUploadedFile != null &&
                            downloadUrl != null) {
                          setState(() {
                            _model.uploadedLocalFile3 = selectedUploadedFile!;
                            _model.uploadedFileUrl3 = downloadUrl!;
                          });
                          showUploadMessage(
                            context,
                            'Success!',
                          );
                        } else {
                          setState(() {});
                          showUploadMessage(
                            context,
                            'Failed to upload file',
                          );
                          return;
                        }
                      }

                      logFirebaseEvent('Column_update_app_state');
                      FFAppState().update(() {
                        FFAppState().pdf = _model.uploadedFileUrl3;
                      });
                      logFirebaseEvent('Column_bottom_sheet');
                      Navigator.pop(context);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF4F8FF),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            FFIcons.kdocumentSketch,
                            color: Color(0xFF0094D4),
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 6.0, 0.0, 0.0),
                          child: SelectionArea(
                              child: Text(
                            'Pdf',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  lineHeight: 1.75,
                                ),
                          )),
                        ),
                      ],
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
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 20.0, 24.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('UPLOADDOCUMENT_COMP_CANCEL_BTN_ON_TAP');
                    logFirebaseEvent('Button_bottom_sheet');
                    Navigator.pop(context);
                  },
                  text: 'Cancel',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Nunito',
                          color: Colors.black,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Color(0xFFEEEEEE),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
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
