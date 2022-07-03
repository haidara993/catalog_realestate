import 'package:catalog_realestate/views/brokers_view.dart';
import 'package:catalog_realestate/views/calculator_view.dart';
import 'package:catalog_realestate/views/home_view.dart';
import 'package:catalog_realestate/views/more_view.dart';
import 'package:catalog_realestate/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController {
  int _navigationValue = 0;
  get navigationValue => _navigationValue;

  Widget _currentScreen = HomeView();
  get currentScreen => _currentScreen;

  void changeSelectedValue(int selectedValue) {
    _navigationValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = HomeView();
          break;
        }
      case 1:
        {
          _currentScreen = SearchView();
          break;
        }
      case 2:
        {
          _currentScreen = BrokerView();
          break;
        }
      case 3:
        {
          _currentScreen = CalculatorView();
          break;
        }
      case 4:
        {
          _currentScreen = MoreView();
          break;
        }
    }
    update();
  }
}
