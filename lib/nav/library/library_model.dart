import '/flutter_flow/flutter_flow_util.dart';
import 'library_widget.dart' show LibraryWidget;
import 'package:flutter/material.dart';

class LibraryModel extends FlutterFlowModel<LibraryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
