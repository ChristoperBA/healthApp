import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsejoSuenoRecord extends FirestoreRecord {
  ConsejoSuenoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Consejo" field.
  String? _consejo;
  String get consejo => _consejo ?? '';
  bool hasConsejo() => _consejo != null;

  void _initializeFields() {
    _consejo = snapshotData['Consejo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ConsejoSueno');

  static Stream<ConsejoSuenoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConsejoSuenoRecord.fromSnapshot(s));

  static Future<ConsejoSuenoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConsejoSuenoRecord.fromSnapshot(s));

  static ConsejoSuenoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConsejoSuenoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConsejoSuenoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConsejoSuenoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConsejoSuenoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConsejoSuenoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConsejoSuenoRecordData({
  String? consejo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Consejo': consejo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConsejoSuenoRecordDocumentEquality
    implements Equality<ConsejoSuenoRecord> {
  const ConsejoSuenoRecordDocumentEquality();

  @override
  bool equals(ConsejoSuenoRecord? e1, ConsejoSuenoRecord? e2) {
    return e1?.consejo == e2?.consejo;
  }

  @override
  int hash(ConsejoSuenoRecord? e) => const ListEquality().hash([e?.consejo]);

  @override
  bool isValidKey(Object? o) => o is ConsejoSuenoRecord;
}
