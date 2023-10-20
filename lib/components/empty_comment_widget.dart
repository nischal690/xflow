import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_comment_model.dart';
export 'empty_comment_model.dart';

class EmptyCommentWidget extends StatefulWidget {
  const EmptyCommentWidget({Key? key}) : super(key: key);

  @override
  _EmptyCommentWidgetState createState() => _EmptyCommentWidgetState();
}

class _EmptyCommentWidgetState extends State<EmptyCommentWidget> {
  late EmptyCommentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyCommentModel());
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
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: Color(0x0E000000),
            offset: Offset(0.0, 6.0),
            spreadRadius: 1.0,
          )
        ],
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Text(
          'No comments yet!!',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Nunito',
                color: Color(0xFF53555C),
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                lineHeight: 1.2,
              ),
        ),
      ),
    );
  }
}
