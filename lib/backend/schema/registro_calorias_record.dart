import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroCaloriasRecord extends FirestoreRecord {
  RegistroCaloriasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TotalCalorias" field.
  String? _totalCalorias;
  String get totalCalorias => _totalCalorias ?? '';
  bool hasTotalCalorias() => _totalCalorias != null;

  // "TotalCarbos" field.
  String? _totalCarbos;
  String get totalCarbos => _totalCarbos ?? '';
  bool hasTotalCarbos() => _totalCarbos != null;

  // "TotalGrasas" field.
  String? _totalGrasas;
  String get totalGrasas => _totalGrasas ?? '';
  bool hasTotalGrasas() => _totalGrasas != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  void _initializeFields() {
    _totalCalorias = snapshotData['TotalCalorias'] as String?;
    _totalCarbos = snapshotData['TotalCarbos'] as String?;
    _totalGrasas = snapshotData['TotalGrasas'] as String?;
    _username = snapshotData['username'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Registro_calorias');

  static Stream<RegistroCaloriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroCaloriasRecord.fromSnapshot(s));

  static Future<RegistroCaloriasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistroCaloriasRecord.fromSnapshot(s));

  static RegistroCaloriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroCaloriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroCaloriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroCaloriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroCaloriasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroCaloriasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroCaloriasRecordData({
  String? totalCalorias,
  String? totalCarbos,
  String? totalGrasas,
  String? username,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TotalCalorias': totalCalorias,
      'TotalCarbos': totalCarbos,
      'TotalGrasas': totalGrasas,
      'username': username,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroCaloriasRecordDocumentEquality
    implements Equality<RegistroCaloriasRecord> {
  const RegistroCaloriasRecordDocumentEquality();

  @override
  bool equals(RegistroCaloriasRecord? e1, RegistroCaloriasRecord? e2) {
    return e1?.totalCalorias == e2?.totalCalorias &&
        e1?.totalCarbos == e2?.totalCarbos &&
        e1?.totalGrasas == e2?.totalGrasas &&
        e1?.username == e2?.username;
  }

  @override
  int hash(RegistroCaloriasRecord? e) => const ListEquality()
      .hash([e?.totalCalorias, e?.totalCarbos, e?.totalGrasas, e?.username]);

  @override
  bool isValidKey(Object? o) => o is RegistroCaloriasRecord;
}
