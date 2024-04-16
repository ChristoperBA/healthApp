import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsejosRecord extends FirestoreRecord {
  ConsejosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_consejo" field.
  int? _idConsejo;
  int get idConsejo => _idConsejo ?? 0;
  bool hasIdConsejo() => _idConsejo != null;

  // "consejo" field.
  String? _consejo;
  String get consejo => _consejo ?? '';
  bool hasConsejo() => _consejo != null;

  // "id_prueba" field.
  List<int>? _idPrueba;
  List<int> get idPrueba => _idPrueba ?? const [];
  bool hasIdPrueba() => _idPrueba != null;

  void _initializeFields() {
    _idConsejo = castToType<int>(snapshotData['id_consejo']);
    _consejo = snapshotData['consejo'] as String?;
    _idPrueba = getDataList(snapshotData['id_prueba']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('consejos');

  static Stream<ConsejosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConsejosRecord.fromSnapshot(s));

  static Future<ConsejosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConsejosRecord.fromSnapshot(s));

  static ConsejosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConsejosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConsejosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConsejosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConsejosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConsejosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConsejosRecordData({
  int? idConsejo,
  String? consejo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_consejo': idConsejo,
      'consejo': consejo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConsejosRecordDocumentEquality implements Equality<ConsejosRecord> {
  const ConsejosRecordDocumentEquality();

  @override
  bool equals(ConsejosRecord? e1, ConsejosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.idConsejo == e2?.idConsejo &&
        e1?.consejo == e2?.consejo &&
        listEquality.equals(e1?.idPrueba, e2?.idPrueba);
  }

  @override
  int hash(ConsejosRecord? e) =>
      const ListEquality().hash([e?.idConsejo, e?.consejo, e?.idPrueba]);

  @override
  bool isValidKey(Object? o) => o is ConsejosRecord;
}
