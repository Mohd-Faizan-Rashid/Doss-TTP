// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    String? name,
    String? streetAddress,
    String? city,
    String? state,
    String? postalCode,
    String? landmark,
    String? homenum,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _streetAddress = streetAddress,
        _city = city,
        _state = state,
        _postalCode = postalCode,
        _landmark = landmark,
        _homenum = homenum,
        super(firestoreUtilData);

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "StreetAddress" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  set streetAddress(String? val) => _streetAddress = val;
  bool hasStreetAddress() => _streetAddress != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "State" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "PostalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;
  bool hasPostalCode() => _postalCode != null;

  // "landmark" field.
  String? _landmark;
  String get landmark => _landmark ?? '';
  set landmark(String? val) => _landmark = val;
  bool hasLandmark() => _landmark != null;

  // "homenum" field.
  String? _homenum;
  String get homenum => _homenum ?? '';
  set homenum(String? val) => _homenum = val;
  bool hasHomenum() => _homenum != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        name: data['Name'] as String?,
        streetAddress: data['StreetAddress'] as String?,
        city: data['City'] as String?,
        state: data['State'] as String?,
        postalCode: data['PostalCode'] as String?,
        landmark: data['landmark'] as String?,
        homenum: data['homenum'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'StreetAddress': _streetAddress,
        'City': _city,
        'State': _state,
        'PostalCode': _postalCode,
        'landmark': _landmark,
        'homenum': _homenum,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'StreetAddress': serializeParam(
          _streetAddress,
          ParamType.String,
        ),
        'City': serializeParam(
          _city,
          ParamType.String,
        ),
        'State': serializeParam(
          _state,
          ParamType.String,
        ),
        'PostalCode': serializeParam(
          _postalCode,
          ParamType.String,
        ),
        'landmark': serializeParam(
          _landmark,
          ParamType.String,
        ),
        'homenum': serializeParam(
          _homenum,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        streetAddress: deserializeParam(
          data['StreetAddress'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['City'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['State'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['PostalCode'],
          ParamType.String,
          false,
        ),
        landmark: deserializeParam(
          data['landmark'],
          ParamType.String,
          false,
        ),
        homenum: deserializeParam(
          data['homenum'],
          ParamType.String,
          false,
        ),
      );

  static AddressStruct fromAlgoliaData(Map<String, dynamic> data) =>
      AddressStruct(
        name: convertAlgoliaParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        streetAddress: convertAlgoliaParam(
          data['StreetAddress'],
          ParamType.String,
          false,
        ),
        city: convertAlgoliaParam(
          data['City'],
          ParamType.String,
          false,
        ),
        state: convertAlgoliaParam(
          data['State'],
          ParamType.String,
          false,
        ),
        postalCode: convertAlgoliaParam(
          data['PostalCode'],
          ParamType.String,
          false,
        ),
        landmark: convertAlgoliaParam(
          data['landmark'],
          ParamType.String,
          false,
        ),
        homenum: convertAlgoliaParam(
          data['homenum'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        name == other.name &&
        streetAddress == other.streetAddress &&
        city == other.city &&
        state == other.state &&
        postalCode == other.postalCode &&
        landmark == other.landmark &&
        homenum == other.homenum;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, streetAddress, city, state, postalCode, landmark, homenum]);
}

AddressStruct createAddressStruct({
  String? name,
  String? streetAddress,
  String? city,
  String? state,
  String? postalCode,
  String? landmark,
  String? homenum,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      name: name,
      streetAddress: streetAddress,
      city: city,
      state: state,
      postalCode: postalCode,
      landmark: landmark,
      homenum: homenum,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    address
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && address.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = address.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData = mapToFirestore(address.toMap());

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
