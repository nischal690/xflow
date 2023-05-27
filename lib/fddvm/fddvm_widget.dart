import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fddvm_model.dart';
export 'fddvm_model.dart';

class FddvmWidget extends StatefulWidget {
  const FddvmWidget({
    Key? key,
    String? currency,
    String? currencyname,
  })  : this.currency = currency ?? '50',
        this.currencyname = currencyname ?? 'USD',
        super(key: key);

  final String currency;
  final String currencyname;

  @override
  _FddvmWidgetState createState() => _FddvmWidgetState();
}

class _FddvmWidgetState extends State<FddvmWidget> {
  late FddvmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FddvmModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'fddvm'});
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
        title: 'fddvm',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    widget.currency,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Text(
                    widget.currencyname,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: custom_widgets.PayPalCheckout1(
                      width: double.infinity,
                      height: 50.0,
                      amount: widget.currency,
                      currencyname: widget.currencyname,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
