import '/flutter_flow/flutter_flow_util.dart';
import 'artpeice_widget.dart' show ArtpeiceWidget;
import 'package:flutter/material.dart';

class ArtpeiceModel extends FlutterFlowModel<ArtpeiceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GridView widget.
  ScrollController? gridViewController;

  @override
  void initState(BuildContext context) {
    gridViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    gridViewController?.dispose();
  }
}
