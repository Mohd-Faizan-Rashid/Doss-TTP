import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'userdetail_widget.dart' show UserdetailWidget;
import 'package:flutter/material.dart';

class UserdetailModel extends FlutterFlowModel<UserdetailWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> userfre = [];
  void addToUserfre(DocumentReference item) => userfre.add(item);
  void removeFromUserfre(DocumentReference item) => userfre.remove(item);
  void removeAtIndexFromUserfre(int index) => userfre.removeAt(index);
  void insertAtIndexInUserfre(int index, DocumentReference item) =>
      userfre.insert(index, item);
  void updateUserfreAtIndex(int index, Function(DocumentReference) updateFn) =>
      userfre[index] = updateFn(userfre[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  ChatsRecord? updated2ChatThread;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? newChat2Thread;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
