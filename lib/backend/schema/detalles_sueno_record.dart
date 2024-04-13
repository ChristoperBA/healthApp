import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetallesSuenoRecord extends FirestoreRecord {
  DetallesSuenoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "SuenoProfundo" field.
  String? _suenoProfundo;
  String get suenoProfundo => _suenoProfundo ?? '';
  bool hasSuenoProfundo() => _suenoProfundo != null;

  // "NivelRonquidos" field.
  String? _nivelRonquidos;
  String get nivelRonquidos => _nivelRonquidos ?? '';
  bool hasNivelRonquidos() => _nivelRonquidos != null;

  // "RitmoCardiaco" field.
  String? _ritmoCardiaco;
  String get ritmoCardiaco => _ritmoCardiaco ?? '';
  bool hasRitmoCardiaco() => _ritmoCardiaco != null;

  void _initializeFields() {
    _suenoProfundo = snapshotData['SuenoProfundo'] as String?;
    _nivelRonquidos = snapshotData['NivelRonquidos'] as String?;
    _ritmoCardiaco = snapshotData['RitmoCardiaco'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DetallesSueno');

  static Stream<DetallesSuenoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DetallesSuenoRecord.fromSnapshot(s));

  static Future<DetallesSuenoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DetallesSuenoRecord.fromSnapshot(s));

  static DetallesSuenoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DetallesSuenoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DetallesSuenoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DetallesSuenoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DetallesSuenoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DetallesSuenoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDetallesSuenoRecordData({
  String? suenoProfundo,
  String? nivelRonquidos,
  String? ritmoCardiaco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SuenoProfundo': suenoProfundo,
      'NivelRonquidos': nivelRonquidos,
      'RitmoCardiaco': ritmoCardiaco,
    }.withoutNulls,
  );

  return firestoreData;
}

class DetallesSuenoRecordDocumentEquality
    implements Equality<DetallesSuenoRecord> {
  const DetallesSuenoRecordDocumentEquality();

  @override
  bool equals(DetallesSuenoRecord? e1, DetallesSuenoRecord? e2) {
    return e1?.suenoProfundo == e2?.suenoProfundo &&
        e1?.nivelRonquidos == e2?.nivelRonquidos &&
        e1?.ritmoCardiaco == e2?.ritmoCardiaco;
  }

  @override
  int hash(DetallesSuenoRecord? e) => const ListEquality()
      .hash([e?.suenoProfundo, e?.nivelRonquidos, e?.ritmoCardiaco]);

  @override
  bool isValidKey(Object? o) => o is DetallesSuenoRecord;
}
