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
import 'discover_model.dart';
export 'discover_model.dart';

class DiscoverWidget extends StatefulWidget {
  const DiscoverWidget({Key? key}) : super(key: key);

  @override
  _DiscoverWidgetState createState() => _DiscoverWidgetState();
}

class _DiscoverWidgetState extends State<DiscoverWidget> {
  late DiscoverModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiscoverModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Discover'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DISCOVER_PAGE_Discover_ON_INIT_STATE');
      logFirebaseEvent('Discover_backend_call');

      final usersUpdateData = {
        'logincount': FieldValue.increment(1),
      };
      await currentUserReference!.update(usersUpdateData);
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
        title: 'Discover',
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 56.0,
                        height: 56.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                                'DISCOVER_PAGE_Icon_ncub06vd_ON_TAP');
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Image.asset(
                                'assets/images/Group_75.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text(
                            'Discover',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w800,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
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
                ],
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: PagedListView<DocumentSnapshot<Object?>?,
                              UserspostRecord>(
                            pagingController: () {
                              final Query<Object?> Function(Query<Object?>)
                                  queryBuilder =
                                  (userspostRecord) => userspostRecord;
                              if (_model.pagingController != null) {
                                final query =
                                    queryBuilder(UserspostRecord.collection);
                                if (query != _model.pagingQuery) {
                                  // The query has changed
                                  _model.pagingQuery = query;
                                  _model.streamSubscriptions
                                      .forEach((s) => s?.cancel());
                                  _model.streamSubscriptions.clear();
                                  _model.pagingController!.refresh();
                                }
                                return _model.pagingController!;
                              }

                              _model.pagingController =
                                  PagingController(firstPageKey: null);
                              _model.pagingQuery =
                                  queryBuilder(UserspostRecord.collection);
                              _model.pagingController!
                                  .addPageRequestListener((nextPageMarker) {
                                queryUserspostRecordPage(
                                  queryBuilder: (userspostRecord) =>
                                      userspostRecord,
                                  nextPageMarker: nextPageMarker,
                                  pageSize: 5,
                                  isStream: true,
                                ).then((page) {
                                  _model.pagingController!.appendPage(
                                    page.data,
                                    page.nextPageMarker,
                                  );
                                  final streamSubscription =
                                      page.dataStream?.listen((data) {
                                    data.forEach((item) {
                                      final itemIndexes = _model
                                          .pagingController!.itemList!
                                          .asMap()
                                          .map((k, v) =>
                                              MapEntry(v.reference.id, k));
                                      final index =
                                          itemIndexes[item.reference.id];
                                      final items =
                                          _model.pagingController!.itemList!;
                                      if (index != null) {
                                        items.replaceRange(
                                            index, index + 1, [item]);
                                        _model.pagingController!.itemList = {
                                          for (var item in items)
                                            item.reference: item
                                        }.values.toList();
                                      }
                                    });
                                    setState(() {});
                                  });
                                  _model.streamSubscriptions
                                      .add(streamSubscription);
                                });
                              });
                              return _model.pagingController!;
                            }(),
                            padding: EdgeInsets.zero,
                            reverse: false,
                            scrollDirection: Axis.vertical,
                            builderDelegate:
                                PagedChildBuilderDelegate<UserspostRecord>(
                              // Customize what your widget looks like when it's loading the first page.
                              firstPageProgressIndicatorBuilder: (_) => Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                              itemBuilder: (context, _, columnContainerIndex) {
                                final columnContainerUserspostRecord = _model
                                    .pagingController!
                                    .itemList![columnContainerIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: UsershortprofileWidget(
                                    key: Key(
                                        'Key011_${columnContainerIndex}_of_${_model.pagingController!.itemList!.length}'),
                                    userref:
                                        columnContainerUserspostRecord.userref,
                                  ),
                                );
                              },
                            ),
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
                ],
              ),
            ),
          ),
        ));
  }
}
