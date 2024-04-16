import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/consejos/cuida_aliment/cuida_aliment_widget.dart';
import '/pages/consejos/deporte/deporte_widget.dart';
import '/pages/consejos/duerme_mas/duerme_mas_widget.dart';
import '/pages/consejos/salud_mental/salud_mental_widget.dart';
import 'h_u003_consejos_widget.dart' show HU003ConsejosWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HU003ConsejosModel extends FlutterFlowModel<HU003ConsejosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
