import 'package:driver_app/app/base_viewmodel/view_state.dart';
import 'package:driver_app/core/use_case/auth/auth_usecase.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

class BaseViewModel extends ChangeNotifier {
  final AuthUseCase authUseCase;

  ViewState _state = ViewState.Idle;

  BaseViewModel({@required this.authUseCase});

  Future<bool> isLoggedIn() async => await authUseCase.isUserAuthenticated();

  ViewState get state => _state;

  void changeState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }

  bool isBusy() => (_state == ViewState.Busy);
}
