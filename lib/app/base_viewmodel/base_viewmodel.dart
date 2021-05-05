import 'package:driver_app/app/base_viewmodel/view_state.dart';
import 'package:flutter/widgets.dart';

class BaseViewModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  void changeState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }

  bool isBusy() => (_state == ViewState.Busy);
}
