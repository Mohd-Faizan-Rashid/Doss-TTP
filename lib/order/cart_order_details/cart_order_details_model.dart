import '/flutter_flow/flutter_flow_util.dart';
import 'cart_order_details_widget.dart' show CartOrderDetailsWidget;
import 'package:flutter/material.dart';

class CartOrderDetailsModel extends FlutterFlowModel<CartOrderDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
