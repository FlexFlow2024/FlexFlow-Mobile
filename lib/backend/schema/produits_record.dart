import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProduitsRecord extends FirestoreRecord {
  ProduitsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "quantite" field.
  double? _quantite;
  double get quantite => _quantite ?? 0.0;
  bool hasQuantite() => _quantite != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
    _quantite = castToType<double>(snapshotData['quantite']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produits');

  static Stream<ProduitsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProduitsRecord.fromSnapshot(s));

  static Future<ProduitsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProduitsRecord.fromSnapshot(s));

  static ProduitsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProduitsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProduitsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProduitsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProduitsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProduitsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProduitsRecordData({
  String? name,
  double? price,
  String? image,
  String? description,
  double? quantite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'image': image,
      'description': description,
      'quantite': quantite,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProduitsRecordDocumentEquality implements Equality<ProduitsRecord> {
  const ProduitsRecordDocumentEquality();

  @override
  bool equals(ProduitsRecord? e1, ProduitsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.quantite == e2?.quantite;
  }

  @override
  int hash(ProduitsRecord? e) => const ListEquality()
      .hash([e?.name, e?.price, e?.image, e?.description, e?.quantite]);

  @override
  bool isValidKey(Object? o) => o is ProduitsRecord;
}
