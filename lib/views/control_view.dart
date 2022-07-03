import 'package:catalog_realestate/controllers/auth_viewmodel.dart';
import 'package:catalog_realestate/controllers/control_viewmodel.dart';
import 'package:catalog_realestate/views/home_view.dart';
import 'package:catalog_realestate/views/phone_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Obx(() {
        return (Get.find<AuthViewModel>().isLogged.value == true)
            ? PhoneScreen()
            : GetBuilder<ControlViewModel>(
                init: ControlViewModel(),
                builder: (controller) {
                  return Scaffold(
                    body: controller.currentScreen,
                    bottomNavigationBar: _bottomNavigationBar(),
                  );
                });
      }),
    );
  }

  Widget _bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      builder: (controller) {
        return BottomNavigationBar(
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.navigationValue,
          onTap: (value) {
            controller.changeSelectedValue(value);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "بحث"),
            BottomNavigationBarItem(
                icon: Icon(Icons.apartment), label: "السماسرة"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate), label: "الألة الحاسبة"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "المزيد"),
          ],
        );
      },
    );
  }
}
