import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActividadFisicaRecord extends FirestoreRecord {
  ActividadFisicaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pasos" field.
  int? _pasos;
  int get pasos => _pasos ?? 0;
  bool hasPasos() => _pasos != null;

  // "distancia" field.
  double? _distancia;
  double get distancia => _distancia ?? 0.0;
  bool hasDistancia() => _distancia != null;

  // "calorias_gastadas" field.
  int? _caloriasGastadas;
  int get caloriasGastadas => _caloriasGastadas ?? 0;
  bool hasCaloriasGastadas() => _caloriasGastadas != null;

  void _initializeFields() {
    _pasos = castToType<int>(snapshotData['pasos']);
    _distancia = castToType<double>(snapshotData['distancia']);
    _caloriasGastadas = castToType<int>(snapshotData['calorias_gastadas']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Actividad_fisica');

  static Stream<ActividadFisicaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActividadFisicaRecord.fromSnapshot(s));

  static Future<ActividadFisicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActividadFisicaRecord.fromSnapshot(s));

  static ActividadFisicaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActividadFisicaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActividadFisicaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActividadFisicaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActividadFisicaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActividadFisicaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActividadFisicaRecordData({
  int? pasos,
  double? distancia,
  int? caloriasGastadas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pasos': pasos,
      'distancia': distancia,
      'calorias_gastadas': caloriasGastadas,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActividadFisicaRecordDocumentEquality
    implements Equality<ActividadFisicaRecord> {
  const ActividadFisicaRecordDocumentEquality();

  @override
  bool equals(ActividadFisicaRecord? e1, ActividadFisicaRecord? e2) {
    return e1?.pasos == e2?.pasos &&
        e1?.distancia == e2?.distancia &&
        e1?.caloriasGastadas == e2?.caloriasGastadas;
  }

  @override
  int hash(ActividadFisicaRecord? e) =>
      const ListEquality().hash([e?.pasos, e?.distancia, e?.caloriasGastadas]);

  @override
  bool isValidKey(Object? o) => o is ActividadFisicaRecord;
}
