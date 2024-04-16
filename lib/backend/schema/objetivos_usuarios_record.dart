import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ObjetivosUsuariosRecord extends FirestoreRecord {
  ObjetivosUsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pasos" field.
  int? _pasos;
  int get pasos => _pasos ?? 0;
  bool hasPasos() => _pasos != null;

  // "calorias" field.
  int? _calorias;
  int get calorias => _calorias ?? 0;
  bool hasCalorias() => _calorias != null;

  // "distancia" field.
  int? _distancia;
  int get distancia => _distancia ?? 0;
  bool hasDistancia() => _distancia != null;

  void _initializeFields() {
    _pasos = castToType<int>(snapshotData['pasos']);
    _calorias = castToType<int>(snapshotData['calorias']);
    _distancia = castToType<int>(snapshotData['distancia']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('objetivos_usuarios');

  static Stream<ObjetivosUsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ObjetivosUsuariosRecord.fromSnapshot(s));

  static Future<ObjetivosUsuariosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ObjetivosUsuariosRecord.fromSnapshot(s));

  static ObjetivosUsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ObjetivosUsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ObjetivosUsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ObjetivosUsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ObjetivosUsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ObjetivosUsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createObjetivosUsuariosRecordData({
  int? pasos,
  int? calorias,
  int? distancia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pasos': pasos,
      'calorias': calorias,
      'distancia': distancia,
    }.withoutNulls,
  );

  return firestoreData;
}

class ObjetivosUsuariosRecordDocumentEquality
    implements Equality<ObjetivosUsuariosRecord> {
  const ObjetivosUsuariosRecordDocumentEquality();

  @override
  bool equals(ObjetivosUsuariosRecord? e1, ObjetivosUsuariosRecord? e2) {
    return e1?.pasos == e2?.pasos &&
        e1?.calorias == e2?.calorias &&
        e1?.distancia == e2?.distancia;
  }

  @override
  int hash(ObjetivosUsuariosRecord? e) =>
      const ListEquality().hash([e?.pasos, e?.calorias, e?.distancia]);

  @override
  bool isValidKey(Object? o) => o is ObjetivosUsuariosRecord;
}
