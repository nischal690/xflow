import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar_widget.dart';
import '/components/usershortprofile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class DiscoverModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column-Container widget.
  PagingController<DocumentSnapshot?, UserspostRecord>? pagingController;
  Query? pagingQuery;
  List<StreamSubscription?> streamSubscriptions = [];

  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  void dispose() {
    streamSubscriptions.forEach((s) => s?.cancel());
    navbarModel.dispose();
  }

  /// Additional helper methods are added here.

}
