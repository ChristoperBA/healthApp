import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'h_u004_registro_alimenticio_widget.dart'
    show HU004RegistroAlimenticioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HU004RegistroAlimenticioModel
    extends FlutterFlowModel<HU004RegistroAlimenticioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Desayuno widget.
  FocusNode? desayunoFocusNode;
  TextEditingController? desayunoController;
  String? Function(BuildContext, String?)? desayunoControllerValidator;
  // State field(s) for CalDesayuno widget.
  FocusNode? calDesayunoFocusNode;
  TextEditingController? calDesayunoController;
  String? Function(BuildContext, String?)? calDesayunoControllerValidator;
  // State field(s) for Carb1 widget.
  FocusNode? carb1FocusNode;
  TextEditingController? carb1Controller;
  String? Function(BuildContext, String?)? carb1ControllerValidator;
  // State field(s) for Prote1 widget.
  FocusNode? prote1FocusNode;
  TextEditingController? prote1Controller;
  String? Function(BuildContext, String?)? prote1ControllerValidator;
  // State field(s) for Grasa1 widget.
  FocusNode? grasa1FocusNode;
  TextEditingController? grasa1Controller;
  String? Function(BuildContext, String?)? grasa1ControllerValidator;
  // State field(s) for Almuerzo widget.
  FocusNode? almuerzoFocusNode;
  TextEditingController? almuerzoController;
  String? Function(BuildContext, String?)? almuerzoControllerValidator;
  // State field(s) for CalAlmuerzo widget.
  FocusNode? calAlmuerzoFocusNode;
  TextEditingController? calAlmuerzoController;
  String? Function(BuildContext, String?)? calAlmuerzoControllerValidator;
  // State field(s) for Carb2 widget.
  FocusNode? carb2FocusNode;
  TextEditingController? carb2Controller;
  String? Function(BuildContext, String?)? carb2ControllerValidator;
  // State field(s) for Prote2 widget.
  FocusNode? prote2FocusNode;
  TextEditingController? prote2Controller;
  String? Function(BuildContext, String?)? prote2ControllerValidator;
  // State field(s) for Grasa2 widget.
  FocusNode? grasa2FocusNode;
  TextEditingController? grasa2Controller;
  String? Function(BuildContext, String?)? grasa2ControllerValidator;
  // State field(s) for Cena widget.
  FocusNode? cenaFocusNode;
  TextEditingController? cenaController;
  String? Function(BuildContext, String?)? cenaControllerValidator;
  // State field(s) for CalCena widget.
  FocusNode? calCenaFocusNode;
  TextEditingController? calCenaController;
  String? Function(BuildContext, String?)? calCenaControllerValidator;
  // State field(s) for Carb3 widget.
  FocusNode? carb3FocusNode;
  TextEditingController? carb3Controller;
  String? Function(BuildContext, String?)? carb3ControllerValidator;
  // State field(s) for Prote3 widget.
  FocusNode? prote3FocusNode;
  TextEditingController? prote3Controller;
  String? Function(BuildContext, String?)? prote3ControllerValidator;
  // State field(s) for Grasa3 widget.
  FocusNode? grasa3FocusNode;
  TextEditingController? grasa3Controller;
  String? Function(BuildContext, String?)? grasa3ControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    desayunoFocusNode?.dispose();
    desayunoController?.dispose();

    calDesayunoFocusNode?.dispose();
    calDesayunoController?.dispose();

    carb1FocusNode?.dispose();
    carb1Controller?.dispose();

    prote1FocusNode?.dispose();
    prote1Controller?.dispose();

    grasa1FocusNode?.dispose();
    grasa1Controller?.dispose();

    almuerzoFocusNode?.dispose();
    almuerzoController?.dispose();

    calAlmuerzoFocusNode?.dispose();
    calAlmuerzoController?.dispose();

    carb2FocusNode?.dispose();
    carb2Controller?.dispose();

    prote2FocusNode?.dispose();
    prote2Controller?.dispose();

    grasa2FocusNode?.dispose();
    grasa2Controller?.dispose();

    cenaFocusNode?.dispose();
    cenaController?.dispose();

    calCenaFocusNode?.dispose();
    calCenaController?.dispose();

    carb3FocusNode?.dispose();
    carb3Controller?.dispose();

    prote3FocusNode?.dispose();
    prote3Controller?.dispose();

    grasa3FocusNode?.dispose();
    grasa3Controller?.dispose();
  }
}
