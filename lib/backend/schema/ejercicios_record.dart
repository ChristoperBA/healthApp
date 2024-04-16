import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EjerciciosRecord extends FirestoreRecord {
  EjerciciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "grupo" field.
  String? _grupo;
  String get grupo => _grupo ?? '';
  bool hasGrupo() => _grupo != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _grupo = snapshotData['grupo'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _link = snapshotData['link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ejercicios');

  static Stream<EjerciciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EjerciciosRecord.fromSnapshot(s));

  static Future<EjerciciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EjerciciosRecord.fromSnapshot(s));

  static EjerciciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EjerciciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EjerciciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EjerciciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EjerciciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EjerciciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEjerciciosRecordData({
  String? nombre,
  String? grupo,
  String? imagen,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'grupo': grupo,
      'imagen': imagen,
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class EjerciciosRecordDocumentEquality implements Equality<EjerciciosRecord> {
  const EjerciciosRecordDocumentEquality();

  @override
  bool equals(EjerciciosRecord? e1, EjerciciosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.grupo == e2?.grupo &&
        e1?.imagen == e2?.imagen &&
        e1?.link == e2?.link;
  }

  @override
  int hash(EjerciciosRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.grupo, e?.imagen, e?.link]);

  @override
  bool isValidKey(Object? o) => o is EjerciciosRecord;
}
