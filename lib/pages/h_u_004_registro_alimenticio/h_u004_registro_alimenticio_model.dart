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
  TextEditingController? desayunoTextController;
  String? Function(BuildContext, String?)? desayunoTextControllerValidator;
  // State field(s) for CalDesayuno widget.
  FocusNode? calDesayunoFocusNode;
  TextEditingController? calDesayunoTextController;
  String? Function(BuildContext, String?)? calDesayunoTextControllerValidator;
  // State field(s) for Carb1 widget.
  FocusNode? carb1FocusNode;
  TextEditingController? carb1TextController;
  String? Function(BuildContext, String?)? carb1TextControllerValidator;
  // State field(s) for Prote1 widget.
  FocusNode? prote1FocusNode;
  TextEditingController? prote1TextController;
  String? Function(BuildContext, String?)? prote1TextControllerValidator;
  // State field(s) for Grasa1 widget.
  FocusNode? grasa1FocusNode;
  TextEditingController? grasa1TextController;
  String? Function(BuildContext, String?)? grasa1TextControllerValidator;
  // State field(s) for Almuerzo widget.
  FocusNode? almuerzoFocusNode;
  TextEditingController? almuerzoTextController;
  String? Function(BuildContext, String?)? almuerzoTextControllerValidator;
  // State field(s) for CalAlmuerzo widget.
  FocusNode? calAlmuerzoFocusNode;
  TextEditingController? calAlmuerzoTextController;
  String? Function(BuildContext, String?)? calAlmuerzoTextControllerValidator;
  // State field(s) for Carb2 widget.
  FocusNode? carb2FocusNode;
  TextEditingController? carb2TextController;
  String? Function(BuildContext, String?)? carb2TextControllerValidator;
  // State field(s) for Prote2 widget.
  FocusNode? prote2FocusNode;
  TextEditingController? prote2TextController;
  String? Function(BuildContext, String?)? prote2TextControllerValidator;
  // State field(s) for Grasa2 widget.
  FocusNode? grasa2FocusNode;
  TextEditingController? grasa2TextController;
  String? Function(BuildContext, String?)? grasa2TextControllerValidator;
  // State field(s) for Cena widget.
  FocusNode? cenaFocusNode;
  TextEditingController? cenaTextController;
  String? Function(BuildContext, String?)? cenaTextControllerValidator;
  // State field(s) for CalCena widget.
  FocusNode? calCenaFocusNode;
  TextEditingController? calCenaTextController;
  String? Function(BuildContext, String?)? calCenaTextControllerValidator;
  // State field(s) for Carb3 widget.
  FocusNode? carb3FocusNode;
  TextEditingController? carb3TextController;
  String? Function(BuildContext, String?)? carb3TextControllerValidator;
  // State field(s) for Prote3 widget.
  FocusNode? prote3FocusNode;
  TextEditingController? prote3TextController;
  String? Function(BuildContext, String?)? prote3TextControllerValidator;
  // State field(s) for Grasa3 widget.
  FocusNode? grasa3FocusNode;
  TextEditingController? grasa3TextController;
  String? Function(BuildContext, String?)? grasa3TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    desayunoFocusNode?.dispose();
    desayunoTextController?.dispose();

    calDesayunoFocusNode?.dispose();
    calDesayunoTextController?.dispose();

    carb1FocusNode?.dispose();
    carb1TextController?.dispose();

    prote1FocusNode?.dispose();
    prote1TextController?.dispose();

    grasa1FocusNode?.dispose();
    grasa1TextController?.dispose();

    almuerzoFocusNode?.dispose();
    almuerzoTextController?.dispose();

    calAlmuerzoFocusNode?.dispose();
    calAlmuerzoTextController?.dispose();

    carb2FocusNode?.dispose();
    carb2TextController?.dispose();

    prote2FocusNode?.dispose();
    prote2TextController?.dispose();

    grasa2FocusNode?.dispose();
    grasa2TextController?.dispose();

    cenaFocusNode?.dispose();
    cenaTextController?.dispose();

    calCenaFocusNode?.dispose();
    calCenaTextController?.dispose();

    carb3FocusNode?.dispose();
    carb3TextController?.dispose();

    prote3FocusNode?.dispose();
    prote3TextController?.dispose();

    grasa3FocusNode?.dispose();
    grasa3TextController?.dispose();
  }
}
