import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_address_widget.dart' show CartAddressWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CartAddressModel extends FlutterFlowModel<CartAddressWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  String zipCode = '';

  AddressStruct? selectedAddress;
  void updateSelectedAddressStruct(Function(AddressStruct) updateFn) {
    updateFn(selectedAddress ??= AddressStruct());
  }

  bool showNewAddress = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for streetAddress2 widget.
  FocusNode? streetAddress2FocusNode1;
  TextEditingController? streetAddress2TextController1;
  String? Function(BuildContext, String?)?
      streetAddress2TextController1Validator;
  // State field(s) for streetAddress2 widget.
  FocusNode? streetAddress2FocusNode2;
  TextEditingController? streetAddress2TextController2;
  String? Function(BuildContext, String?)?
      streetAddress2TextController2Validator;
  // State field(s) for streetAddress2 widget.
  FocusNode? streetAddress2FocusNode3;
  TextEditingController? streetAddress2TextController3;
  String? Function(BuildContext, String?)?
      streetAddress2TextController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lhksxy58' /* Please enter your city */,
      );
    }

    return null;
  }

  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  String? _stateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '4uacrifl' /* Choose a state */,
      );
    }

    return null;
  }

  // State field(s) for zipCodeMobile widget.
  FocusNode? zipCodeMobileFocusNode;
  TextEditingController? zipCodeMobileTextController;
  String? Function(BuildContext, String?)? zipCodeMobileTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? newOrder;

  @override
  void initState(BuildContext context) {
    cityTextControllerValidator = _cityTextControllerValidator;
    stateTextControllerValidator = _stateTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    streetAddress2FocusNode1?.dispose();
    streetAddress2TextController1?.dispose();

    streetAddress2FocusNode2?.dispose();
    streetAddress2TextController2?.dispose();

    streetAddress2FocusNode3?.dispose();
    streetAddress2TextController3?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    zipCodeMobileFocusNode?.dispose();
    zipCodeMobileTextController?.dispose();
  }
}
