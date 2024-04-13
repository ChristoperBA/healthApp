import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'deporte_model.dart';
export 'deporte_model.dart';

class DeporteWidget extends StatefulWidget {
  const DeporteWidget({super.key});

  @override
  State<DeporteWidget> createState() => _DeporteWidgetState();
}

class _DeporteWidgetState extends State<DeporteWidget> {
  late DeporteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeporteModel());
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
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Haz deporte, ¡Muevete!',
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
                  '1. Encuentra algo que disfrutes: Elige actividades físicas que te gusten. Ya sea correr, nadar, bailar, practicar yoga o jugar al baloncesto, encontrar algo que disfrutes hará que sea más probable que te mantengas comprometido a largo plazo.',
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
                  '2. Establece metas alcanzables: Define metas realistas y alcanzables para ti. Pueden ser objetivos a corto plazo, como correr una cierta distancia en un determinado tiempo, o a largo plazo, como perder peso o aumentar tu resistencia.',
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
                  '3. Varía tu rutina de ejercicio: Alterna entre diferentes tipos de ejercicios para trabajar diferentes grupos musculares y evitar el aburrimiento. Esto también puede ayudar a prevenir lesiones por sobreuso.',
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
                  '4. Incorpora ejercicios de fuerza: No te centres únicamente en el cardio. Los ejercicios de fuerza, como el levantamiento de pesas o el entrenamiento con el peso corporal, son importantes para construir músculo, aumentar la fuerza y ​​mejorar la salud ósea.',
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
                  '5. Escucha a tu cuerpo: Presta atención a las señales de tu cuerpo y no te exijas demasiado. Descansa cuando lo necesites y no ignores el dolor persistente, ya que podría ser una señal de lesión.',
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
