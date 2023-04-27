import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'suhana_aibot_model.dart';
export 'suhana_aibot_model.dart';

class SuhanaAibotWidget extends StatefulWidget {
  const SuhanaAibotWidget({Key? key}) : super(key: key);

  @override
  _SuhanaAibotWidgetState createState() => _SuhanaAibotWidgetState();
}

class _SuhanaAibotWidgetState extends State<SuhanaAibotWidget> {
  late SuhanaAibotModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuhanaAibotModel());

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
      decoration: BoxDecoration(
        color: Color(0xF6E2F692),
        borderRadius: BorderRadius.circular(28.0),
        border: Border.all(
          color: Color(0xEA000000),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: SelectionArea(
            child: AutoSizeText(
          '🧳 Ready for your next adventure? Our travel expert Dianne has got you covered! Get personalized recommendations, trip planning assistance, booking support, language translation, and 24/7 customer support.\n\n👀 Explore our platform for popular destinations and travel tips, and when you\'re ready to start planning, DIanne will be your personal travel assistant!',
          style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: 'Nunito',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 14.0,
                lineHeight: 1.5,
              ),
        )),
      ),
    );
  }
}
