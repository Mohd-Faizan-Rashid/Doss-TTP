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
    _safeInit(() {
      _jj = prefs
              .getStringList('ff_jj')
              ?.map((x) => Color(int.tryParse(x) ?? 0))
              .toList() ??
          _jj;
    });
    _safeInit(() {
      _post =
          prefs.getStringList('ff_post')?.map((path) => path.ref).toList() ??
              _post;
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
    savepost.add(value);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  void removeFromSavepost(DocumentReference value) {
    savepost.remove(value);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  void removeAtIndexFromSavepost(int index) {
    savepost.removeAt(index);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  void updateSavepostAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    savepost[index] = updateFn(_savepost[index]);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  void insertAtIndexInSavepost(int index, DocumentReference value) {
    savepost.insert(index, value);
    prefs.setStringList('ff_savepost', _savepost.map((x) => x.path).toList());
  }

  List<DocumentReference> _mycart = [];
  List<DocumentReference> get mycart => _mycart;
  set mycart(List<DocumentReference> value) {
    _mycart = value;
    prefs.setStringList('ff_mycart', value.map((x) => x.path).toList());
  }

  void addToMycart(DocumentReference value) {
    mycart.add(value);
    prefs.setStringList('ff_mycart', _mycart.map((x) => x.path).toList());
  }

  void removeFromMycart(DocumentReference value) {
    mycart.remove(value);
    prefs.setStringList('ff_mycart', _mycart.map((x) => x.path).toList());
  }

  void removeAtIndexFromMycart(int index) {
    mycart.removeAt(index);
    prefs.setStringList('ff_mycart', _mycart.map((x) => x.path).toList());
  }

  void updateMycartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    mycart[index] = updateFn(_mycart[index]);
    prefs.setStringList('ff_mycart', _mycart.map((x) => x.path).toList());
  }

  void insertAtIndexInMycart(int index, DocumentReference value) {
    mycart.insert(index, value);
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
    myCartSummary.add(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeFromMyCartSummary(double value) {
    myCartSummary.remove(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMyCartSummary(int index) {
    myCartSummary.removeAt(index);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void updateMyCartSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    myCartSummary[index] = updateFn(_myCartSummary[index]);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInMyCartSummary(int index, double value) {
    myCartSummary.insert(index, value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  Color _vv = const Color(0xffff5300);
  Color get vv => _vv;
  set vv(Color value) {
    _vv = value;
    prefs.setInt('ff_vv', value.value);
  }

  List<Color> _jj = [const Color(0xffff5300)];
  List<Color> get jj => _jj;
  set jj(List<Color> value) {
    _jj = value;
    prefs.setStringList('ff_jj', value.map((x) => x.value.toString()).toList());
  }

  void addToJj(Color value) {
    jj.add(value);
    prefs.setStringList('ff_jj', _jj.map((x) => x.value.toString()).toList());
  }

  void removeFromJj(Color value) {
    jj.remove(value);
    prefs.setStringList('ff_jj', _jj.map((x) => x.value.toString()).toList());
  }

  void removeAtIndexFromJj(int index) {
    jj.removeAt(index);
    prefs.setStringList('ff_jj', _jj.map((x) => x.value.toString()).toList());
  }

  void updateJjAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    jj[index] = updateFn(_jj[index]);
    prefs.setStringList('ff_jj', _jj.map((x) => x.value.toString()).toList());
  }

  void insertAtIndexInJj(int index, Color value) {
    jj.insert(index, value);
    prefs.setStringList('ff_jj', _jj.map((x) => x.value.toString()).toList());
  }

  List<DocumentReference> _post = [];
  List<DocumentReference> get post => _post;
  set post(List<DocumentReference> value) {
    _post = value;
    prefs.setStringList('ff_post', value.map((x) => x.path).toList());
  }

  void addToPost(DocumentReference value) {
    post.add(value);
    prefs.setStringList('ff_post', _post.map((x) => x.path).toList());
  }

  void removeFromPost(DocumentReference value) {
    post.remove(value);
    prefs.setStringList('ff_post', _post.map((x) => x.path).toList());
  }

  void removeAtIndexFromPost(int index) {
    post.removeAt(index);
    prefs.setStringList('ff_post', _post.map((x) => x.path).toList());
  }

  void updatePostAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    post[index] = updateFn(_post[index]);
    prefs.setStringList('ff_post', _post.map((x) => x.path).toList());
  }

  void insertAtIndexInPost(int index, DocumentReference value) {
    post.insert(index, value);
    prefs.setStringList('ff_post', _post.map((x) => x.path).toList());
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
