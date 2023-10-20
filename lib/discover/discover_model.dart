import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/usershortprofile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'discover_widget.dart' show DiscoverWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class DiscoverModel extends FlutterFlowModel<DiscoverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column-Container widget.

  PagingController<DocumentSnapshot?, UserspostRecord>?
      columnContainerPagingController;
  Query? columnContainerPagingQuery;
  List<StreamSubscription?> columnContainerStreamSubscriptions = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    columnContainerStreamSubscriptions.forEach((s) => s?.cancel());
    columnContainerPagingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<DocumentSnapshot?, UserspostRecord>
      setColumnContainerController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    columnContainerPagingController ??=
        _createColumnContainerController(query, parent);
    if (columnContainerPagingQuery != query) {
      columnContainerPagingQuery = query;
      columnContainerPagingController?.refresh();
    }
    return columnContainerPagingController!;
  }

  PagingController<DocumentSnapshot?, UserspostRecord>
      _createColumnContainerController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, UserspostRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryUserspostRecordPage(
          nextPageMarker: nextPageMarker,
          streamSubscriptions: columnContainerStreamSubscriptions,
          controller: controller,
          pageSize: 5,
          isStream: true,
        ),
      );
  }
}
