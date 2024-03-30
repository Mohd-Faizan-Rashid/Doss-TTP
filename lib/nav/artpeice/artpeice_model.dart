import '/flutter_flow/flutter_flow_util.dart';
import 'artpeice_widget.dart' show ArtpeiceWidget;
import 'package:flutter/material.dart';

class ArtpeiceModel extends FlutterFlowModel<ArtpeiceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
    listViewController?.dispose();
  }
}
