import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PublicacionesRecord extends FirestoreRecord {
  PublicacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "contenido" field.
  String? _contenido;
  String get contenido => _contenido ?? '';
  bool hasContenido() => _contenido != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "autor" field.
  DocumentReference? _autor;
  DocumentReference? get autor => _autor;
  bool hasAutor() => _autor != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _contenido = snapshotData['contenido'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _autor = snapshotData['autor'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('publicaciones');

  static Stream<PublicacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PublicacionesRecord.fromSnapshot(s));

  static Future<PublicacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PublicacionesRecord.fromSnapshot(s));

  static PublicacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PublicacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PublicacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PublicacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PublicacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PublicacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPublicacionesRecordData({
  String? titulo,
  String? contenido,
  String? imagen,
  DocumentReference? autor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'contenido': contenido,
      'imagen': imagen,
      'autor': autor,
    }.withoutNulls,
  );

  return firestoreData;
}

class PublicacionesRecordDocumentEquality
    implements Equality<PublicacionesRecord> {
  const PublicacionesRecordDocumentEquality();

  @override
  bool equals(PublicacionesRecord? e1, PublicacionesRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.contenido == e2?.contenido &&
        e1?.imagen == e2?.imagen &&
        e1?.autor == e2?.autor;
  }

  @override
  int hash(PublicacionesRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.contenido, e?.imagen, e?.autor]);

  @override
  bool isValidKey(Object? o) => o is PublicacionesRecord;
}
