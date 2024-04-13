import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasMedicasRecord extends FirestoreRecord {
  CitasMedicasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Lugar" field.
  String? _lugar;
  String get lugar => _lugar ?? '';
  bool hasLugar() => _lugar != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  void _initializeFields() {
    _tipo = snapshotData['Tipo'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _lugar = snapshotData['Lugar'] as String?;
    _username = snapshotData['username'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('citasMedicas');

  static Stream<CitasMedicasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasMedicasRecord.fromSnapshot(s));

  static Future<CitasMedicasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasMedicasRecord.fromSnapshot(s));

  static CitasMedicasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CitasMedicasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasMedicasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasMedicasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasMedicasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasMedicasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasMedicasRecordData({
  String? tipo,
  DateTime? fecha,
  String? lugar,
  String? username,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Tipo': tipo,
      'Fecha': fecha,
      'Lugar': lugar,
      'username': username,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasMedicasRecordDocumentEquality
    implements Equality<CitasMedicasRecord> {
  const CitasMedicasRecordDocumentEquality();

  @override
  bool equals(CitasMedicasRecord? e1, CitasMedicasRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.fecha == e2?.fecha &&
        e1?.lugar == e2?.lugar &&
        e1?.username == e2?.username;
  }

  @override
  int hash(CitasMedicasRecord? e) =>
      const ListEquality().hash([e?.tipo, e?.fecha, e?.lugar, e?.username]);

  @override
  bool isValidKey(Object? o) => o is CitasMedicasRecord;
}
