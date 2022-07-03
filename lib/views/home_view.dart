// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:catalog_realestate/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:http/http.dart' as http;

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SvgPicture.asset('assets/images/AcrossMENA _logo.svg',
                    height: 100.0),
                Container(
                  child: GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: .8),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                            bottom: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/location-svgrepo-com.svg',
                                height: 50.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text("بحث الخريطة"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                            bottom: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/search-svgrepo-com (1).svg',
                                height: 50.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text("البحث المتقدم"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/time-svgrepo-com.svg',
                                height: 50.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text("تاريخ البحث"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                            bottom: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/star-svgrepo-com.svg',
                                height: 50.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text("تفضيلاتي"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                            bottom: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/shine-hashtag-svgrepo-com.svg',
                                height: 50.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text("ابحث من خلال الرقم"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/user-svgrepo-com.svg',
                                height: 50.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text("ابحث عن سمسار"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/chat-svgrepo-com.svg',
                                height: 50.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text("نصائح و حقائق"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColor.GreyIcons,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/calculator-svgrepo-com.svg',
                                height: 50.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text("الألة الحاسبة"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/icons/headphone-headphones-svgrepo-com.svg',
                                height: 50.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text("المزيد"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(200, 0)),
                    backgroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return AppColor.BlueBtn;
                      }
                      return AppColor.BlueBtn;
                    }),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
                    elevation: MaterialStateProperty.all<double>(0.5),
                  ),
                  onPressed: () {},
                  child: Text(
                    'بحث فوري',
                    style: TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                ),
                Text(
                  'وجه جهازك تجاه عقار قريب واضغط بحث فوري للحصول على معلومات فورية عنه.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
