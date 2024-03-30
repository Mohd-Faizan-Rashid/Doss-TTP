import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "EVENT_POSTER" field.
  String? _eventPoster;
  String get eventPoster => _eventPoster ?? '';
  bool hasEventPoster() => _eventPoster != null;

  // "EVENT_VIDEO" field.
  String? _eventVideo;
  String get eventVideo => _eventVideo ?? '';
  bool hasEventVideo() => _eventVideo != null;

  // "EVENT_USER" field.
  DocumentReference? _eventUser;
  DocumentReference? get eventUser => _eventUser;
  bool hasEventUser() => _eventUser != null;

  // "REWARD" field.
  String? _reward;
  String get reward => _reward ?? '';
  bool hasReward() => _reward != null;

  // "REWARD_IMG" field.
  String? _rewardImg;
  String get rewardImg => _rewardImg ?? '';
  bool hasRewardImg() => _rewardImg != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "eventstartdate" field.
  String? _eventstartdate;
  String get eventstartdate => _eventstartdate ?? '';
  bool hasEventstartdate() => _eventstartdate != null;

  // "eventenddate" field.
  String? _eventenddate;
  String get eventenddate => _eventenddate ?? '';
  bool hasEventenddate() => _eventenddate != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "locate" field.
  double? _locate;
  double get locate => _locate ?? 0.0;
  bool hasLocate() => _locate != null;

  // "resgister" field.
  String? _resgister;
  String get resgister => _resgister ?? '';
  bool hasResgister() => _resgister != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _eventPoster = snapshotData['EVENT_POSTER'] as String?;
    _eventVideo = snapshotData['EVENT_VIDEO'] as String?;
    _eventUser = snapshotData['EVENT_USER'] as DocumentReference?;
    _reward = snapshotData['REWARD'] as String?;
    _rewardImg = snapshotData['REWARD_IMG'] as String?;
    _title = snapshotData['title'] as String?;
    _eventstartdate = snapshotData['eventstartdate'] as String?;
    _eventenddate = snapshotData['eventenddate'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _locate = castToType<double>(snapshotData['locate']);
    _resgister = snapshotData['resgister'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('EVENTS')
          : FirebaseFirestore.instance.collectionGroup('EVENTS');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('EVENTS').doc(id);

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? description,
  String? specifications,
  DateTime? createdAt,
  DateTime? modifiedAt,
  String? eventPoster,
  String? eventVideo,
  DocumentReference? eventUser,
  String? reward,
  String? rewardImg,
  String? title,
  String? eventstartdate,
  String? eventenddate,
  int? price,
  double? locate,
  String? resgister,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'specifications': specifications,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'EVENT_POSTER': eventPoster,
      'EVENT_VIDEO': eventVideo,
      'EVENT_USER': eventUser,
      'REWARD': reward,
      'REWARD_IMG': rewardImg,
      'title': title,
      'eventstartdate': eventstartdate,
      'eventenddate': eventenddate,
      'price': price,
      'locate': locate,
      'resgister': resgister,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.eventPoster == e2?.eventPoster &&
        e1?.eventVideo == e2?.eventVideo &&
        e1?.eventUser == e2?.eventUser &&
        e1?.reward == e2?.reward &&
        e1?.rewardImg == e2?.rewardImg &&
        e1?.title == e2?.title &&
        e1?.eventstartdate == e2?.eventstartdate &&
        e1?.eventenddate == e2?.eventenddate &&
        e1?.price == e2?.price &&
        e1?.locate == e2?.locate &&
        e1?.resgister == e2?.resgister;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.description,
        e?.specifications,
        e?.createdAt,
        e?.modifiedAt,
        e?.eventPoster,
        e?.eventVideo,
        e?.eventUser,
        e?.reward,
        e?.rewardImg,
        e?.title,
        e?.eventstartdate,
        e?.eventenddate,
        e?.price,
        e?.locate,
        e?.resgister
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
