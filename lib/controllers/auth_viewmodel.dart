import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthViewModel extends GetxController {
  ValueNotifier<bool> _loading = ValueNotifier(false);
  ValueNotifier<bool> get loading => _loading;

  final isLogged = false.obs;

  bool _checkedValue = false;
  bool get checkedValue => _checkedValue;

  void oncheckedValueChanged(bool newValue) {
    _checkedValue = newValue;
    update();
  }

  void login() {
    isLogged.value = true;
  }
}
