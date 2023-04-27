import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottomsheet_model.dart';
export 'bottomsheet_model.dart';

class BottomsheetWidget extends StatefulWidget {
  const BottomsheetWidget({
    Key? key,
    this.amountinInr,
  }) : super(key: key);

  final double? amountinInr;

  @override
  _BottomsheetWidgetState createState() => _BottomsheetWidgetState();
}

class _BottomsheetWidgetState extends State<BottomsheetWidget> {
  late BottomsheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomsheetModel());

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
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: AuthUserStreamWidget(
          builder: (context) => FutureBuilder<ApiCallResponse>(
            future: CurrencyconverterCall.call(
              to: 'INR',
              from: valueOrDefault(currentUserDocument?.currencytype, ''),
              amount: widget.amountinInr,
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
              final columnCurrencyconverterResponse = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 48.0,
                    child: Divider(
                      thickness: 5.0,
                      color: Color(0xFFC6C6C9),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Total:',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: Color(0xFF8C8D93),
                                  fontSize: 16.0,
                                  lineHeight: 1.25,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.amountinInr?.toString(),
                              '0',
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '(\$${columnCurrencyconverterResponse.jsonBody.toString()})',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF1A1C26),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.angleDown,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                  Text(
                    'Pay with wallet',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x1A000000),
                                  offset: Offset(0.0, 2.0),
                                  spreadRadius: 0.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Color(0xFFE8E8E9),
                                width: 1.0,
                              ),
                            ),
                            child: Icon(
                              FFIcons.kwallet,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wallet',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Balance :',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Text(
                                    columnCurrencyconverterResponse.jsonBody
                                        .toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
