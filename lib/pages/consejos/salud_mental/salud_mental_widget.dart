import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'salud_mental_model.dart';
export 'salud_mental_model.dart';

class SaludMentalWidget extends StatefulWidget {
  const SaludMentalWidget({super.key});

  @override
  State<SaludMentalWidget> createState() => _SaludMentalWidgetState();
}

class _SaludMentalWidgetState extends State<SaludMentalWidget> {
  late SaludMentalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaludMentalModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 499.0,
      height: 950.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, -1.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Cuida tu salud mental',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondary,
                      fontSize: 25.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  '1. Practica la atención plena (mindfulness): Dedica tiempo cada día a practicar la atención plena, ya sea a través de la meditación, la respiración consciente o simplemente prestando atención plena a tus actividades diarias. Esto puede ayudarte a reducir el estrés, la ansiedad y mejorar tu bienestar general.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  '2. Establece límites saludables: Aprende a decir \"no\" cuando sea necesario y establece límites claros en tus relaciones personales y profesionales. Es importante proteger tu tiempo y energía para evitar el agotamiento y la sobrecarga.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  '3. Mantén una rutina saludable: Establece una rutina diaria que incluya tiempo para el trabajo, el descanso, el ejercicio, la alimentación saludable y el ocio. Una rutina predecible puede proporcionarte estructura y estabilidad emocional.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  '4. Cuida tu cuerpo: El ejercicio regular, una alimentación saludable y un buen descanso son fundamentales para el bienestar mental. Estos hábitos pueden ayudar a reducir el estrés, mejorar el estado de ánimo y aumentar la energía.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  '5. Conecta con otros: Cultiva relaciones sociales saludables y busca el apoyo de amigos, familiares o grupos de apoyo cuando lo necesites. El apoyo social puede ser una poderosa herramienta para reducir el estrés y aumentar la resiliencia emocional.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(19.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.safePop();
                        },
                        text: 'Regresar',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF39D2C0),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
