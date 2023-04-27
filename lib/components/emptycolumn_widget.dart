import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'emptycolumn_model.dart';
export 'emptycolumn_model.dart';

class EmptycolumnWidget extends StatefulWidget {
  const EmptycolumnWidget({Key? key}) : super(key: key);

  @override
  _EmptycolumnWidgetState createState() => _EmptycolumnWidgetState();
}

class _EmptycolumnWidgetState extends State<EmptycolumnWidget> {
  late EmptycolumnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptycolumnModel());

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
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          'No transactions yet!!',
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
