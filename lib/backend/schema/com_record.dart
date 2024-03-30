import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComRecord extends FirestoreRecord {
  ComRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "post_likes" field.
  List<DocumentReference>? _postLikes;
  List<DocumentReference> get postLikes => _postLikes ?? const [];
  bool hasPostLikes() => _postLikes != null;

  // "comuser" field.
  DocumentReference? _comuser;
  DocumentReference? get comuser => _comuser;
  bool hasComuser() => _comuser != null;

  // "createdtime" field.
  DateTime? _createdtime;
  DateTime? get createdtime => _createdtime;
  bool hasCreatedtime() => _createdtime != null;

  // "comtext" field.
  String? _comtext;
  String get comtext => _comtext ?? '';
  bool hasComtext() => _comtext != null;

  // "connum" field.
  int? _connum;
  int get connum => _connum ?? 0;
  bool hasConnum() => _connum != null;

  // "posttype" field.
  DocumentReference? _posttype;
  DocumentReference? get posttype => _posttype;
  bool hasPosttype() => _posttype != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _postLikes = getDataList(snapshotData['post_likes']);
    _comuser = snapshotData['comuser'] as DocumentReference?;
    _createdtime = snapshotData['createdtime'] as DateTime?;
    _comtext = snapshotData['comtext'] as String?;
    _connum = castToType<int>(snapshotData['connum']);
    _posttype = snapshotData['posttype'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('com')
          : FirebaseFirestore.instance.collectionGroup('com');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('com').doc(id);

  static Stream<ComRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComRecord.fromSnapshot(s));

  static Future<ComRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComRecord.fromSnapshot(s));

  static ComRecord fromSnapshot(DocumentSnapshot snapshot) => ComRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComRecordData({
  DocumentReference? comuser,
  DateTime? createdtime,
  String? comtext,
  int? connum,
  DocumentReference? posttype,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comuser': comuser,
      'createdtime': createdtime,
      'comtext': comtext,
      'connum': connum,
      'posttype': posttype,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComRecordDocumentEquality implements Equality<ComRecord> {
  const ComRecordDocumentEquality();

  @override
  bool equals(ComRecord? e1, ComRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.postLikes, e2?.postLikes) &&
        e1?.comuser == e2?.comuser &&
        e1?.createdtime == e2?.createdtime &&
        e1?.comtext == e2?.comtext &&
        e1?.connum == e2?.connum &&
        e1?.posttype == e2?.posttype;
  }

  @override
  int hash(ComRecord? e) => const ListEquality().hash([
        e?.postLikes,
        e?.comuser,
        e?.createdtime,
        e?.comtext,
        e?.connum,
        e?.posttype
      ]);

  @override
  bool isValidKey(Object? o) => o is ComRecord;
}
