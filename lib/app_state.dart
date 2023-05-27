import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _Home = false;
  bool get Home => _Home;
  set Home(bool _value) {
    _Home = _value;
  }

  bool _Transact = false;
  bool get Transact => _Transact;
  set Transact(bool _value) {
    _Transact = _value;
  }

  bool _History = false;
  bool get History => _History;
  set History(bool _value) {
    _History = _value;
  }

  bool _pay = false;
  bool get pay => _pay;
  set pay(bool _value) {
    _pay = _value;
  }

  bool _receive = true;
  bool get receive => _receive;
  set receive(bool _value) {
    _receive = _value;
  }

  String _UPIID = '';
  String get UPIID => _UPIID;
  set UPIID(String _value) {
    _UPIID = _value;
  }

  bool _amount = false;
  bool get amount => _amount;
  set amount(bool _value) {
    _amount = _value;
  }

  String _Countryname = '';
  String get Countryname => _Countryname;
  set Countryname(String _value) {
    _Countryname = _value;
  }

  String _shortform = '';
  String get shortform => _shortform;
  set shortform(String _value) {
    _shortform = _value;
  }

  String _flag = '';
  String get flag => _flag;
  set flag(String _value) {
    _flag = _value;
  }

  String _currency = '';
  String get currency => _currency;
  set currency(String _value) {
    _currency = _value;
  }

  String _currencysymbol = '';
  String get currencysymbol => _currencysymbol;
  set currencysymbol(String _value) {
    _currencysymbol = _value;
  }

  String _phonenumber = '';
  String get phonenumber => _phonenumber;
  set phonenumber(String _value) {
    _phonenumber = _value;
  }

  bool _searchon = false;
  bool get searchon => _searchon;
  set searchon(bool _value) {
    _searchon = _value;
  }

  String _Countrysearch = '';
  String get Countrysearch => _Countrysearch;
  set Countrysearch(String _value) {
    _Countrysearch = _value;
  }

  String _latlangsearch = '';
  String get latlangsearch => _latlangsearch;
  set latlangsearch(String _value) {
    _latlangsearch = _value;
  }

  List<String> _interest = [];
  List<String> get interest => _interest;
  set interest(List<String> _value) {
    _interest = _value;
  }

  void addToInterest(String _value) {
    _interest.add(_value);
  }

  void removeFromInterest(String _value) {
    _interest.remove(_value);
  }

  void removeAtIndexFromInterest(int _index) {
    _interest.removeAt(_index);
  }

  void updateInterestAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_interest[_index]);
  }

  String _Documenttype = '';
  String get Documenttype => _Documenttype;
  set Documenttype(String _value) {
    _Documenttype = _value;
  }

  String _documentimage = '';
  String get documentimage => _documentimage;
  set documentimage(String _value) {
    _documentimage = _value;
  }

  bool _isOptionExpanded = false;
  bool get isOptionExpanded => _isOptionExpanded;
  set isOptionExpanded(bool _value) {
    _isOptionExpanded = _value;
  }

  bool _registerscreen = true;
  bool get registerscreen => _registerscreen;
  set registerscreen(bool _value) {
    _registerscreen = _value;
  }

  String _profilePic = '';
  String get profilePic => _profilePic;
  set profilePic(String _value) {
    _profilePic = _value;
  }

  String _profilePicture = '';
  String get profilePicture => _profilePicture;
  set profilePicture(String _value) {
    _profilePicture = _value;
  }

  DateTime? _dateofbirth;
  DateTime? get dateofbirth => _dateofbirth;
  set dateofbirth(DateTime? _value) {
    _dateofbirth = _value;
  }

  String _frontSide = '';
  String get frontSide => _frontSide;
  set frontSide(String _value) {
    _frontSide = _value;
  }

  String _backSide = '';
  String get backSide => _backSide;
  set backSide(String _value) {
    _backSide = _value;
  }

  String _pdf = '';
  String get pdf => _pdf;
  set pdf(String _value) {
    _pdf = _value;
  }

  bool _community = false;
  bool get community => _community;
  set community(bool _value) {
    _community = _value;
  }

  List<String> _posttags = [];
  List<String> get posttags => _posttags;
  set posttags(List<String> _value) {
    _posttags = _value;
  }

  void addToPosttags(String _value) {
    _posttags.add(_value);
  }

  void removeFromPosttags(String _value) {
    _posttags.remove(_value);
  }

  void removeAtIndexFromPosttags(int _index) {
    _posttags.removeAt(_index);
  }

  void updatePosttagsAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_posttags[_index]);
  }

  String _tag = '';
  String get tag => _tag;
  set tag(String _value) {
    _tag = _value;
  }

  List<String> _postPhotos = [];
  List<String> get postPhotos => _postPhotos;
  set postPhotos(List<String> _value) {
    _postPhotos = _value;
  }

  void addToPostPhotos(String _value) {
    _postPhotos.add(_value);
  }

  void removeFromPostPhotos(String _value) {
    _postPhotos.remove(_value);
  }

  void removeAtIndexFromPostPhotos(int _index) {
    _postPhotos.removeAt(_index);
  }

  void updatePostPhotosAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_postPhotos[_index]);
  }

  String _video = '';
  String get video => _video;
  set video(String _value) {
    _video = _value;
  }

  String _audio = '';
  String get audio => _audio;
  set audio(String _value) {
    _audio = _value;
  }

  bool _posts = false;
  bool get posts => _posts;
  set posts(bool _value) {
    _posts = _value;
  }

  bool _followers = false;
  bool get followers => _followers;
  set followers(bool _value) {
    _followers = _value;
  }

  String _sortname = '';
  String get sortname => _sortname;
  set sortname(String _value) {
    _sortname = _value;
  }

  List<String> _guidecities = [];
  List<String> get guidecities => _guidecities;
  set guidecities(List<String> _value) {
    _guidecities = _value;
  }

  void addToGuidecities(String _value) {
    _guidecities.add(_value);
  }

  void removeFromGuidecities(String _value) {
    _guidecities.remove(_value);
  }

  void removeAtIndexFromGuidecities(int _index) {
    _guidecities.removeAt(_index);
  }

  void updateGuidecitiesAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_guidecities[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
