import '/flutter_flow/flutter_flow_util.dart';
import 'mytheme_widget.dart' show MythemeWidget;
import 'package:flutter/material.dart';

class MythemeModel extends FlutterFlowModel<MythemeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Color? colorPicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
