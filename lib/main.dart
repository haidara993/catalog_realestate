import 'package:catalog_realestate/helpers/bindings.dart';
import 'package:catalog_realestate/utils/app_color.dart';
import 'package:catalog_realestate/views/control_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "hedorashop",
      theme: ThemeData(
          scaffoldBackgroundColor: AppColor.Background,
          appBarTheme: AppBarTheme(
            color: AppColor.Background,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
          )),
      initialBinding: Binding(),
      home: ControlView(),
    );
  }
}
