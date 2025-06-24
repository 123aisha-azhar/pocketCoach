import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgentChatRecord extends FirestoreRecord {
  AgentChatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "conversationID" field.
  String? _conversationID;
  String get conversationID => _conversationID ?? '';
  bool hasConversationID() => _conversationID != null;

  // "agentResponse" field.
  String? _agentResponse;
  String get agentResponse => _agentResponse ?? '';
  bool hasAgentResponse() => _agentResponse != null;

  // "userQuestion" field.
  String? _userQuestion;
  String get userQuestion => _userQuestion ?? '';
  bool hasUserQuestion() => _userQuestion != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _conversationID = snapshotData['conversationID'] as String?;
    _agentResponse = snapshotData['agentResponse'] as String?;
    _userQuestion = snapshotData['userQuestion'] as String?;
    _userID = snapshotData['userID'] as String?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agentChat');

  static Stream<AgentChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgentChatRecord.fromSnapshot(s));

  static Future<AgentChatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgentChatRecord.fromSnapshot(s));

  static AgentChatRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgentChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgentChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgentChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgentChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgentChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgentChatRecordData({
  String? conversationID,
  String? agentResponse,
  String? userQuestion,
  String? userID,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'conversationID': conversationID,
      'agentResponse': agentResponse,
      'userQuestion': userQuestion,
      'userID': userID,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgentChatRecordDocumentEquality implements Equality<AgentChatRecord> {
  const AgentChatRecordDocumentEquality();

  @override
  bool equals(AgentChatRecord? e1, AgentChatRecord? e2) {
    return e1?.conversationID == e2?.conversationID &&
        e1?.agentResponse == e2?.agentResponse &&
        e1?.userQuestion == e2?.userQuestion &&
        e1?.userID == e2?.userID &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(AgentChatRecord? e) => const ListEquality().hash([
        e?.conversationID,
        e?.agentResponse,
        e?.userQuestion,
        e?.userID,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is AgentChatRecord;
}
