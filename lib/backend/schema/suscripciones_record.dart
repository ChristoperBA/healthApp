import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuscripcionesRecord extends FirestoreRecord {
  SuscripcionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "monto" field.
  int? _monto;
  int get monto => _monto ?? 0;
  bool hasMonto() => _monto != null;

  void _initializeFields() {
    _username = snapshotData['Username'] as String?;
    _monto = castToType<int>(snapshotData['monto']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Suscripciones');

  static Stream<SuscripcionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SuscripcionesRecord.fromSnapshot(s));

  static Future<SuscripcionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SuscripcionesRecord.fromSnapshot(s));

  static SuscripcionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SuscripcionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SuscripcionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SuscripcionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SuscripcionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SuscripcionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSuscripcionesRecordData({
  String? username,
  int? monto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Username': username,
      'monto': monto,
    }.withoutNulls,
  );

  return firestoreData;
}

class SuscripcionesRecordDocumentEquality
    implements Equality<SuscripcionesRecord> {
  const SuscripcionesRecordDocumentEquality();

  @override
  bool equals(SuscripcionesRecord? e1, SuscripcionesRecord? e2) {
    return e1?.username == e2?.username && e1?.monto == e2?.monto;
  }

  @override
  int hash(SuscripcionesRecord? e) =>
      const ListEquality().hash([e?.username, e?.monto]);

  @override
  bool isValidKey(Object? o) => o is SuscripcionesRecord;
}
