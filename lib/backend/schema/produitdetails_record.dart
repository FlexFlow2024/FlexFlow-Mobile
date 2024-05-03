import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProduitdetailsRecord extends FirestoreRecord {
  ProduitdetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "prix" field.
  double? _prix;
  double get prix => _prix ?? 0.0;
  bool hasPrix() => _prix != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _prix = castToType<double>(snapshotData['prix']);
    _imageUrl = snapshotData['image_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produitdetails');

  static Stream<ProduitdetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProduitdetailsRecord.fromSnapshot(s));

  static Future<ProduitdetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProduitdetailsRecord.fromSnapshot(s));

  static ProduitdetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProduitdetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProduitdetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProduitdetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProduitdetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProduitdetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProduitdetailsRecordData({
  String? name,
  String? description,
  double? prix,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'prix': prix,
      'image_url': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProduitdetailsRecordDocumentEquality
    implements Equality<ProduitdetailsRecord> {
  const ProduitdetailsRecordDocumentEquality();

  @override
  bool equals(ProduitdetailsRecord? e1, ProduitdetailsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.prix == e2?.prix &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(ProduitdetailsRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.prix, e?.imageUrl]);

  @override
  bool isValidKey(Object? o) => o is ProduitdetailsRecord;
}
