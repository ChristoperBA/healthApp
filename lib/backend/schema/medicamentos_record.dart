import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicamentosRecord extends FirestoreRecord {
  MedicamentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "NombreMed" field.
  String? _nombreMed;
  String get nombreMed => _nombreMed ?? '';
  bool hasNombreMed() => _nombreMed != null;

  // "hora" field.
  DateTime? _hora;
  DateTime? get hora => _hora;
  bool hasHora() => _hora != null;

  void _initializeFields() {
    _username = snapshotData['Username'] as String?;
    _nombreMed = snapshotData['NombreMed'] as String?;
    _hora = snapshotData['hora'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Medicamentos');

  static Stream<MedicamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicamentosRecord.fromSnapshot(s));

  static Future<MedicamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicamentosRecord.fromSnapshot(s));

  static MedicamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicamentosRecordData({
  String? username,
  String? nombreMed,
  DateTime? hora,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Username': username,
      'NombreMed': nombreMed,
      'hora': hora,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicamentosRecordDocumentEquality
    implements Equality<MedicamentosRecord> {
  const MedicamentosRecordDocumentEquality();

  @override
  bool equals(MedicamentosRecord? e1, MedicamentosRecord? e2) {
    return e1?.username == e2?.username &&
        e1?.nombreMed == e2?.nombreMed &&
        e1?.hora == e2?.hora;
  }

  @override
  int hash(MedicamentosRecord? e) =>
      const ListEquality().hash([e?.username, e?.nombreMed, e?.hora]);

  @override
  bool isValidKey(Object? o) => o is MedicamentosRecord;
}
