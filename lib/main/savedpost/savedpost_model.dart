import '/flutter_flow/flutter_flow_util.dart';
import 'savedpost_widget.dart' show SavedpostWidget;
import 'package:flutter/material.dart';

class SavedpostModel extends FlutterFlowModel<SavedpostWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
