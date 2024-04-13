import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'citas_form_widget.dart' show CitasFormWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CitasFormModel extends FlutterFlowModel<CitasFormWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for dropDowntipoCita widget.
  String? dropDowntipoCitaValue;
  FormFieldController<String>? dropDowntipoCitaValueController;
  // State field(s) for dropDowntipoLugar widget.
  String? dropDowntipoLugarValue;
  FormFieldController<String>? dropDowntipoLugarValueController;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
