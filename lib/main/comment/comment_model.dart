import '/flutter_flow/flutter_flow_util.dart';
import 'comment_widget.dart' show CommentWidget;
import 'package:flutter/material.dart';

class CommentModel extends FlutterFlowModel<CommentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    columnController1?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    columnController2?.dispose();
    listViewController?.dispose();
  }
}
