import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActividadSuenoRecord extends FirestoreRecord {
  ActividadSuenoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "HoraCompleta" field.
  String? _horaCompleta;
  String get horaCompleta => _horaCompleta ?? '';
  bool hasHoraCompleta() => _horaCompleta != null;

  void _initializeFields() {
    _horaCompleta = snapshotData['HoraCompleta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ActividadSueno');

  static Stream<ActividadSuenoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActividadSuenoRecord.fromSnapshot(s));

  static Future<ActividadSuenoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActividadSuenoRecord.fromSnapshot(s));

  static ActividadSuenoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActividadSuenoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActividadSuenoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActividadSuenoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActividadSuenoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActividadSuenoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActividadSuenoRecordData({
  String? horaCompleta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'HoraCompleta': horaCompleta,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActividadSuenoRecordDocumentEquality
    implements Equality<ActividadSuenoRecord> {
  const ActividadSuenoRecordDocumentEquality();

  @override
  bool equals(ActividadSuenoRecord? e1, ActividadSuenoRecord? e2) {
    return e1?.horaCompleta == e2?.horaCompleta;
  }

  @override
  int hash(ActividadSuenoRecord? e) =>
      const ListEquality().hash([e?.horaCompleta]);

  @override
  bool isValidKey(Object? o) => o is ActividadSuenoRecord;
}
