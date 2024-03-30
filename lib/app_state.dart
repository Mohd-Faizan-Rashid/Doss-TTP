import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _savepost = prefs
              .getStringList('ff_savepost')
              ?.map((path) => path.ref)
              .toList() ??
          _savepost;
    });
    _safeInit(() {
      _mycart =
          prefs.getStringList('ff_mycart')?.map((path) => path.ref).toList() ??
              _mycart;
    });
    _safeInit(() {
      _myCartSummary =
          prefs.getStringList('ff_myCartSummary')?.map(double.parse).toList() ??
              _myCartSummary;
    });
    _safeInit(() {
      _vv = _colorFromIntValue(prefs.getInt('ff_vv')) ?? _vv;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _savepost = [];
  List<DocumentReference> get savepost => _savepost;
  set savepost(List<DocumentReference> value) {
    _savepost = value;
    prefs.setStringList('ff_savepost', value.map((x) => x.path).toList());
  }

  void addToSavepost(DocumentReference value) {
    _savepost.add(value);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  void removeFromSavepost(DocumentReference value) {
    _savepost.remove(value);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  void removeAtIndexFromSavepost(int index) {
    _savepost.removeAt(index);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  void updateSavepostAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _savepost[index] = updateFn(_savepost[index]);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  void insertAtIndexInSavepost(int index, DocumentReference value) {
    _savepost.insert(index, value);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  List<DocumentReference> _mycart = [];
  List<DocumentReference> get mycart => _mycart;
  set mycart(List<DocumentReference> value) {
    _mycart = value;
    prefs.setStringList('ff_mycart', value.map((x) => x.path).toList());
  }

  void addToMycart(DocumentReference value) {
    _mycart.add(value);
    prefs.setStringList('ff_mycart', _mycart.map((x) => x.path).toList());
  }

  void removeFromMycart(DocumentReference value) {
    _mycart.remove(value);
    prefs.setStringList('ff_mycart', _mycart.map((x) => x.path).toList());
  }

  void removeAtIndexFromMycart(int index) {
    _mycart.removeAt(index);
    prefs.setStringList('ff_mycart', _mycart.map((x) => x.path).toList());
  }

  void updateMycartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _mycart[index] = updateFn(_mycart[index]);
    prefs.setStringList('ff_mycart', _mycart.map((x) => x.path).toList());
  }

  void insertAtIndexInMycart(int index, DocumentReference value) {
    _mycart.insert(index, value);
    prefs.setStringList('ff_mycart', _mycart.map((x) => x.path).toList());
  }

  List<double> _myCartSummary = [];
  List<double> get myCartSummary => _myCartSummary;
  set myCartSummary(List<double> value) {
    _myCartSummary = value;
    prefs.setStringList(
        'ff_myCartSummary', value.map((x) => x.toString()).toList());
  }

  void addToMyCartSummary(double value) {
    _myCartSummary.add(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeFromMyCartSummary(double value) {
    _myCartSummary.remove(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMyCartSummary(int index) {
    _myCartSummary.removeAt(index);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void updateMyCartSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _myCartSummary[index] = updateFn(_myCartSummary[index]);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInMyCartSummary(int index, double value) {
    _myCartSummary.insert(index, value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  Color _vv = const Color(0xffff5300);
  Color get vv => _vv;
  set vv(Color value) {
    _vv = value;
    prefs.setInt('ff_vv', value.value);
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
