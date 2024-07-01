import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotiRecord extends FirestoreRecord {
  NotiRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "USERID" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "POSTID" field.
  DocumentReference? _postid;
  DocumentReference? get postid => _postid;
  bool hasPostid() => _postid != null;

  // "EVENTID" field.
  DocumentReference? _eventid;
  DocumentReference? get eventid => _eventid;
  bool hasEventid() => _eventid != null;

  // "TIMENOTI" field.
  DateTime? _timenoti;
  DateTime? get timenoti => _timenoti;
  bool hasTimenoti() => _timenoti != null;

  // "postimg" field.
  String? _postimg;
  String get postimg => _postimg ?? '';
  bool hasPostimg() => _postimg != null;

  // "comid" field.
  DocumentReference? _comid;
  DocumentReference? get comid => _comid;
  bool hasComid() => _comid != null;

  // "usrid" field.
  DocumentReference? _usrid;
  DocumentReference? get usrid => _usrid;
  bool hasUsrid() => _usrid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userid = snapshotData['USERID'] as DocumentReference?;
    _postid = snapshotData['POSTID'] as DocumentReference?;
    _eventid = snapshotData['EVENTID'] as DocumentReference?;
    _timenoti = snapshotData['TIMENOTI'] as DateTime?;
    _postimg = snapshotData['postimg'] as String?;
    _comid = snapshotData['comid'] as DocumentReference?;
    _usrid = snapshotData['usrid'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('NOTI')
          : FirebaseFirestore.instance.collectionGroup('NOTI');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('NOTI').doc(id);

  static Stream<NotiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotiRecord.fromSnapshot(s));

  static Future<NotiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotiRecord.fromSnapshot(s));

  static NotiRecord fromSnapshot(DocumentSnapshot snapshot) => NotiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotiRecordData({
  DocumentReference? userid,
  DocumentReference? postid,
  DocumentReference? eventid,
  DateTime? timenoti,
  String? postimg,
  DocumentReference? comid,
  DocumentReference? usrid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'USERID': userid,
      'POSTID': postid,
      'EVENTID': eventid,
      'TIMENOTI': timenoti,
      'postimg': postimg,
      'comid': comid,
      'usrid': usrid,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotiRecordDocumentEquality implements Equality<NotiRecord> {
  const NotiRecordDocumentEquality();

  @override
  bool equals(NotiRecord? e1, NotiRecord? e2) {
    return e1?.userid == e2?.userid &&
        e1?.postid == e2?.postid &&
        e1?.eventid == e2?.eventid &&
        e1?.timenoti == e2?.timenoti &&
        e1?.postimg == e2?.postimg &&
        e1?.comid == e2?.comid &&
        e1?.usrid == e2?.usrid;
  }

  @override
  int hash(NotiRecord? e) => const ListEquality().hash([
        e?.userid,
        e?.postid,
        e?.eventid,
        e?.timenoti,
        e?.postimg,
        e?.comid,
        e?.usrid
      ]);

  @override
  bool isValidKey(Object? o) => o is NotiRecord;
}
