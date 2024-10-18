import 'package:flutter/material.dart' show ChangeNotifier;

enum DialState {
  opened,
  closed;

  void reverse() => this == DialState.opened ? DialState.closed : DialState.opened;
  bool get isOpened => this == DialState.opened;
  bool get isClosed => this == DialState.closed;
}

class SpeedDialController extends ChangeNotifier {
  SpeedDialController();

  DialState _state = DialState.closed;
  DialState get state => _state;

  void open() {
    _state = DialState.opened;
    notifyListeners();
  }

  void close() {
    _state = DialState.closed;
    notifyListeners();
  }

  void changeState() {
    _state = _state == DialState.opened ? DialState.closed : DialState.opened;
    notifyListeners();
  }
}
