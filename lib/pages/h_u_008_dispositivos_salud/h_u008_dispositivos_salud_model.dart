import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dispositivos_form_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'h_u008_dispositivos_salud_widget.dart'
    show HU008DispositivosSaludWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HU008DispositivosSaludModel
    extends FlutterFlowModel<HU008DispositivosSaludWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
