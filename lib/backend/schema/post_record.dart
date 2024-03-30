import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "post_photo" field.
  String? _postPhoto;
  String get postPhoto => _postPhoto ?? '';
  bool hasPostPhoto() => _postPhoto != null;

  // "post_title" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "post_description" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "post_user" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "num_comments" field.
  int? _numComments;
  int get numComments => _numComments ?? 0;
  bool hasNumComments() => _numComments != null;

  // "num_votes" field.
  int? _numVotes;
  int get numVotes => _numVotes ?? 0;
  bool hasNumVotes() => _numVotes != null;

  // "post_likes" field.
  List<DocumentReference>? _postLikes;
  List<DocumentReference> get postLikes => _postLikes ?? const [];
  bool hasPostLikes() => _postLikes != null;

  // "post_vedio" field.
  String? _postVedio;
  String get postVedio => _postVedio ?? '';
  bool hasPostVedio() => _postVedio != null;

  // "postusr" field.
  String? _postusr;
  String get postusr => _postusr ?? '';
  bool hasPostusr() => _postusr != null;

  // "postuer" field.
  String? _postuer;
  String get postuer => _postuer ?? '';
  bool hasPostuer() => _postuer != null;

  // "postimg" field.
  String? _postimg;
  String get postimg => _postimg ?? '';
  bool hasPostimg() => _postimg != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _postPhoto = snapshotData['post_photo'] as String?;
    _postTitle = snapshotData['post_title'] as String?;
    _postDescription = snapshotData['post_description'] as String?;
    _postUser = snapshotData['post_user'] as DocumentReference?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _numComments = castToType<int>(snapshotData['num_comments']);
    _numVotes = castToType<int>(snapshotData['num_votes']);
    _postLikes = getDataList(snapshotData['post_likes']);
    _postVedio = snapshotData['post_vedio'] as String?;
    _postusr = snapshotData['postusr'] as String?;
    _postuer = snapshotData['postuer'] as String?;
    _postimg = snapshotData['postimg'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('post')
          : FirebaseFirestore.instance.collectionGroup('post');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('post').doc(id);

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostRecordData({
  String? postPhoto,
  String? postTitle,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  int? numComments,
  int? numVotes,
  String? postVedio,
  String? postusr,
  String? postuer,
  String? postimg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_photo': postPhoto,
      'post_title': postTitle,
      'post_description': postDescription,
      'post_user': postUser,
      'time_posted': timePosted,
      'num_comments': numComments,
      'num_votes': numVotes,
      'post_vedio': postVedio,
      'postusr': postusr,
      'postuer': postuer,
      'postimg': postimg,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostRecordDocumentEquality implements Equality<PostRecord> {
  const PostRecordDocumentEquality();

  @override
  bool equals(PostRecord? e1, PostRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postPhoto == e2?.postPhoto &&
        e1?.postTitle == e2?.postTitle &&
        e1?.postDescription == e2?.postDescription &&
        e1?.postUser == e2?.postUser &&
        e1?.timePosted == e2?.timePosted &&
        e1?.numComments == e2?.numComments &&
        e1?.numVotes == e2?.numVotes &&
        listEquality.equals(e1?.postLikes, e2?.postLikes) &&
        e1?.postVedio == e2?.postVedio &&
        e1?.postusr == e2?.postusr &&
        e1?.postuer == e2?.postuer &&
        e1?.postimg == e2?.postimg;
  }

  @override
  int hash(PostRecord? e) => const ListEquality().hash([
        e?.postPhoto,
        e?.postTitle,
        e?.postDescription,
        e?.postUser,
        e?.timePosted,
        e?.numComments,
        e?.numVotes,
        e?.postLikes,
        e?.postVedio,
        e?.postusr,
        e?.postuer,
        e?.postimg
      ]);

  @override
  bool isValidKey(Object? o) => o is PostRecord;
}
