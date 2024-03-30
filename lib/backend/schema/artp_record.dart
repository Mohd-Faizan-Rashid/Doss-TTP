import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtpRecord extends FirestoreRecord {
  ArtpRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "artvideo" field.
  String? _artvideo;
  String get artvideo => _artvideo ?? '';
  bool hasArtvideo() => _artvideo != null;

  // "artimg" field.
  String? _artimg;
  String get artimg => _artimg ?? '';
  bool hasArtimg() => _artimg != null;

  // "artuser" field.
  DocumentReference? _artuser;
  DocumentReference? get artuser => _artuser;
  bool hasArtuser() => _artuser != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "createdby" field.
  String? _createdby;
  String get createdby => _createdby ?? '';
  bool hasCreatedby() => _createdby != null;

  // "createdyear" field.
  String? _createdyear;
  String get createdyear => _createdyear ?? '';
  bool hasCreatedyear() => _createdyear != null;

  // "subcategory" field.
  String? _subcategory;
  String get subcategory => _subcategory ?? '';
  bool hasSubcategory() => _subcategory != null;

  // "addressart" field.
  AddressStruct? _addressart;
  AddressStruct get addressart => _addressart ?? AddressStruct();
  bool hasAddressart() => _addressart != null;

  // "prices" field.
  List<double>? _prices;
  List<double> get prices => _prices ?? const [];
  bool hasPrices() => _prices != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _artvideo = snapshotData['artvideo'] as String?;
    _artimg = snapshotData['artimg'] as String?;
    _artuser = snapshotData['artuser'] as DocumentReference?;
    _category = snapshotData['category'] as String?;
    _createdby = snapshotData['createdby'] as String?;
    _createdyear = snapshotData['createdyear'] as String?;
    _subcategory = snapshotData['subcategory'] as String?;
    _addressart = AddressStruct.maybeFromMap(snapshotData['addressart']);
    _prices = getDataList(snapshotData['prices']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('artp')
          : FirebaseFirestore.instance.collectionGroup('artp');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('artp').doc(id);

  static Stream<ArtpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArtpRecord.fromSnapshot(s));

  static Future<ArtpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArtpRecord.fromSnapshot(s));

  static ArtpRecord fromSnapshot(DocumentSnapshot snapshot) => ArtpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArtpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArtpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArtpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArtpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArtpRecordData({
  String? name,
  String? specifications,
  double? price,
  DateTime? createdAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? artvideo,
  String? artimg,
  DocumentReference? artuser,
  String? category,
  String? createdby,
  String? createdyear,
  String? subcategory,
  AddressStruct? addressart,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'artvideo': artvideo,
      'artimg': artimg,
      'artuser': artuser,
      'category': category,
      'createdby': createdby,
      'createdyear': createdyear,
      'subcategory': subcategory,
      'addressart': AddressStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "addressart" field.
  addAddressStructData(firestoreData, addressart, 'addressart');

  return firestoreData;
}

class ArtpRecordDocumentEquality implements Equality<ArtpRecord> {
  const ArtpRecordDocumentEquality();

  @override
  bool equals(ArtpRecord? e1, ArtpRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.artvideo == e2?.artvideo &&
        e1?.artimg == e2?.artimg &&
        e1?.artuser == e2?.artuser &&
        e1?.category == e2?.category &&
        e1?.createdby == e2?.createdby &&
        e1?.createdyear == e2?.createdyear &&
        e1?.subcategory == e2?.subcategory &&
        e1?.addressart == e2?.addressart &&
        listEquality.equals(e1?.prices, e2?.prices);
  }

  @override
  int hash(ArtpRecord? e) => const ListEquality().hash([
        e?.name,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.artvideo,
        e?.artimg,
        e?.artuser,
        e?.category,
        e?.createdby,
        e?.createdyear,
        e?.subcategory,
        e?.addressart,
        e?.prices
      ]);

  @override
  bool isValidKey(Object? o) => o is ArtpRecord;
}
