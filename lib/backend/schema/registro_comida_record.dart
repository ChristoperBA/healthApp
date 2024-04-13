import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroComidaRecord extends FirestoreRecord {
  RegistroComidaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "DesayunoCal" field.
  String? _desayunoCal;
  String get desayunoCal => _desayunoCal ?? '';
  bool hasDesayunoCal() => _desayunoCal != null;

  // "AlmuerzoCal" field.
  String? _almuerzoCal;
  String get almuerzoCal => _almuerzoCal ?? '';
  bool hasAlmuerzoCal() => _almuerzoCal != null;

  // "CenaCal" field.
  String? _cenaCal;
  String get cenaCal => _cenaCal ?? '';
  bool hasCenaCal() => _cenaCal != null;

  // "Desayuno" field.
  String? _desayuno;
  String get desayuno => _desayuno ?? '';
  bool hasDesayuno() => _desayuno != null;

  // "Almuerzo" field.
  String? _almuerzo;
  String get almuerzo => _almuerzo ?? '';
  bool hasAlmuerzo() => _almuerzo != null;

  // "Cena" field.
  String? _cena;
  String get cena => _cena ?? '';
  bool hasCena() => _cena != null;

  // "DesayunoProte" field.
  String? _desayunoProte;
  String get desayunoProte => _desayunoProte ?? '';
  bool hasDesayunoProte() => _desayunoProte != null;

  // "AlmuerzoProte" field.
  String? _almuerzoProte;
  String get almuerzoProte => _almuerzoProte ?? '';
  bool hasAlmuerzoProte() => _almuerzoProte != null;

  // "CenaProte" field.
  String? _cenaProte;
  String get cenaProte => _cenaProte ?? '';
  bool hasCenaProte() => _cenaProte != null;

  // "DesayunoCarbos" field.
  String? _desayunoCarbos;
  String get desayunoCarbos => _desayunoCarbos ?? '';
  bool hasDesayunoCarbos() => _desayunoCarbos != null;

  // "AlmuerzoCarbos" field.
  String? _almuerzoCarbos;
  String get almuerzoCarbos => _almuerzoCarbos ?? '';
  bool hasAlmuerzoCarbos() => _almuerzoCarbos != null;

  // "CenaCarbos" field.
  String? _cenaCarbos;
  String get cenaCarbos => _cenaCarbos ?? '';
  bool hasCenaCarbos() => _cenaCarbos != null;

  // "DesayunoGrasas" field.
  String? _desayunoGrasas;
  String get desayunoGrasas => _desayunoGrasas ?? '';
  bool hasDesayunoGrasas() => _desayunoGrasas != null;

  // "AlmuerzoGrasas" field.
  String? _almuerzoGrasas;
  String get almuerzoGrasas => _almuerzoGrasas ?? '';
  bool hasAlmuerzoGrasas() => _almuerzoGrasas != null;

  // "CenaGrasas" field.
  String? _cenaGrasas;
  String get cenaGrasas => _cenaGrasas ?? '';
  bool hasCenaGrasas() => _cenaGrasas != null;

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

  void _initializeFields() {
    _desayunoCal = snapshotData['DesayunoCal'] as String?;
    _almuerzoCal = snapshotData['AlmuerzoCal'] as String?;
    _cenaCal = snapshotData['CenaCal'] as String?;
    _desayuno = snapshotData['Desayuno'] as String?;
    _almuerzo = snapshotData['Almuerzo'] as String?;
    _cena = snapshotData['Cena'] as String?;
    _desayunoProte = snapshotData['DesayunoProte'] as String?;
    _almuerzoProte = snapshotData['AlmuerzoProte'] as String?;
    _cenaProte = snapshotData['CenaProte'] as String?;
    _desayunoCarbos = snapshotData['DesayunoCarbos'] as String?;
    _almuerzoCarbos = snapshotData['AlmuerzoCarbos'] as String?;
    _cenaCarbos = snapshotData['CenaCarbos'] as String?;
    _desayunoGrasas = snapshotData['DesayunoGrasas'] as String?;
    _almuerzoGrasas = snapshotData['AlmuerzoGrasas'] as String?;
    _cenaGrasas = snapshotData['CenaGrasas'] as String?;
    _totalCalorias = snapshotData['TotalCalorias'] as String?;
    _totalCarbos = snapshotData['TotalCarbos'] as String?;
    _totalGrasas = snapshotData['TotalGrasas'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RegistroComida');

  static Stream<RegistroComidaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroComidaRecord.fromSnapshot(s));

  static Future<RegistroComidaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistroComidaRecord.fromSnapshot(s));

  static RegistroComidaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroComidaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroComidaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroComidaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroComidaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroComidaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroComidaRecordData({
  String? desayunoCal,
  String? almuerzoCal,
  String? cenaCal,
  String? desayuno,
  String? almuerzo,
  String? cena,
  String? desayunoProte,
  String? almuerzoProte,
  String? cenaProte,
  String? desayunoCarbos,
  String? almuerzoCarbos,
  String? cenaCarbos,
  String? desayunoGrasas,
  String? almuerzoGrasas,
  String? cenaGrasas,
  String? totalCalorias,
  String? totalCarbos,
  String? totalGrasas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DesayunoCal': desayunoCal,
      'AlmuerzoCal': almuerzoCal,
      'CenaCal': cenaCal,
      'Desayuno': desayuno,
      'Almuerzo': almuerzo,
      'Cena': cena,
      'DesayunoProte': desayunoProte,
      'AlmuerzoProte': almuerzoProte,
      'CenaProte': cenaProte,
      'DesayunoCarbos': desayunoCarbos,
      'AlmuerzoCarbos': almuerzoCarbos,
      'CenaCarbos': cenaCarbos,
      'DesayunoGrasas': desayunoGrasas,
      'AlmuerzoGrasas': almuerzoGrasas,
      'CenaGrasas': cenaGrasas,
      'TotalCalorias': totalCalorias,
      'TotalCarbos': totalCarbos,
      'TotalGrasas': totalGrasas,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroComidaRecordDocumentEquality
    implements Equality<RegistroComidaRecord> {
  const RegistroComidaRecordDocumentEquality();

  @override
  bool equals(RegistroComidaRecord? e1, RegistroComidaRecord? e2) {
    return e1?.desayunoCal == e2?.desayunoCal &&
        e1?.almuerzoCal == e2?.almuerzoCal &&
        e1?.cenaCal == e2?.cenaCal &&
        e1?.desayuno == e2?.desayuno &&
        e1?.almuerzo == e2?.almuerzo &&
        e1?.cena == e2?.cena &&
        e1?.desayunoProte == e2?.desayunoProte &&
        e1?.almuerzoProte == e2?.almuerzoProte &&
        e1?.cenaProte == e2?.cenaProte &&
        e1?.desayunoCarbos == e2?.desayunoCarbos &&
        e1?.almuerzoCarbos == e2?.almuerzoCarbos &&
        e1?.cenaCarbos == e2?.cenaCarbos &&
        e1?.desayunoGrasas == e2?.desayunoGrasas &&
        e1?.almuerzoGrasas == e2?.almuerzoGrasas &&
        e1?.cenaGrasas == e2?.cenaGrasas &&
        e1?.totalCalorias == e2?.totalCalorias &&
        e1?.totalCarbos == e2?.totalCarbos &&
        e1?.totalGrasas == e2?.totalGrasas;
  }

  @override
  int hash(RegistroComidaRecord? e) => const ListEquality().hash([
        e?.desayunoCal,
        e?.almuerzoCal,
        e?.cenaCal,
        e?.desayuno,
        e?.almuerzo,
        e?.cena,
        e?.desayunoProte,
        e?.almuerzoProte,
        e?.cenaProte,
        e?.desayunoCarbos,
        e?.almuerzoCarbos,
        e?.cenaCarbos,
        e?.desayunoGrasas,
        e?.almuerzoGrasas,
        e?.cenaGrasas,
        e?.totalCalorias,
        e?.totalCarbos,
        e?.totalGrasas
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroComidaRecord;
}
