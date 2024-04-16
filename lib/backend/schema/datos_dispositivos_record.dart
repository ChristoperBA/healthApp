import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatosDispositivosRecord extends FirestoreRecord {
  DatosDispositivosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "Hora" field.
  DateTime? _hora;
  DateTime? get hora => _hora;
  bool hasHora() => _hora != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "FrecCardiaca" field.
  String? _frecCardiaca;
  String get frecCardiaca => _frecCardiaca ?? '';
  bool hasFrecCardiaca() => _frecCardiaca != null;

  // "OxigSangre" field.
  String? _oxigSangre;
  String get oxigSangre => _oxigSangre ?? '';
  bool hasOxigSangre() => _oxigSangre != null;

  void _initializeFields() {
    _username = snapshotData['Username'] as String?;
    _hora = snapshotData['Hora'] as DateTime?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _frecCardiaca = snapshotData['FrecCardiaca'] as String?;
    _oxigSangre = snapshotData['OxigSangre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DatosDispositivos');

  static Stream<DatosDispositivosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DatosDispositivosRecord.fromSnapshot(s));

  static Future<DatosDispositivosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DatosDispositivosRecord.fromSnapshot(s));

  static DatosDispositivosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DatosDispositivosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DatosDispositivosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DatosDispositivosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DatosDispositivosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DatosDispositivosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDatosDispositivosRecordData({
  String? username,
  DateTime? hora,
  DateTime? fecha,
  String? frecCardiaca,
  String? oxigSangre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Username': username,
      'Hora': hora,
      'Fecha': fecha,
      'FrecCardiaca': frecCardiaca,
      'OxigSangre': oxigSangre,
    }.withoutNulls,
  );

  return firestoreData;
}

class DatosDispositivosRecordDocumentEquality
    implements Equality<DatosDispositivosRecord> {
  const DatosDispositivosRecordDocumentEquality();

  @override
  bool equals(DatosDispositivosRecord? e1, DatosDispositivosRecord? e2) {
    return e1?.username == e2?.username &&
        e1?.hora == e2?.hora &&
        e1?.fecha == e2?.fecha &&
        e1?.frecCardiaca == e2?.frecCardiaca &&
        e1?.oxigSangre == e2?.oxigSangre;
  }

  @override
  int hash(DatosDispositivosRecord? e) => const ListEquality()
      .hash([e?.username, e?.hora, e?.fecha, e?.frecCardiaca, e?.oxigSangre]);

  @override
  bool isValidKey(Object? o) => o is DatosDispositivosRecord;
}
