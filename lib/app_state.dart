import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _bookingtime = '';
  String get bookingtime => _bookingtime;
  set bookingtime(String value) {
    _bookingtime = value;
  }

  bool _pastBooking = true;
  bool get pastBooking => _pastBooking;
  set pastBooking(bool value) {
    _pastBooking = value;
  }

  bool _upcomingBooking = true;
  bool get upcomingBooking => _upcomingBooking;
  set upcomingBooking(bool value) {
    _upcomingBooking = value;
  }
}
