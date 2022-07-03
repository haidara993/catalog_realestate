import 'package:catalog_realestate/controllers/auth_viewmodel.dart';
import 'package:catalog_realestate/utils/app_color.dart';
import 'package:catalog_realestate/views/sms_screen.dart';
import 'package:catalog_realestate/views/widgets/rounded_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneScreen extends GetWidget<AuthViewModel> {
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset('assets/images/AcrossMENA _logo.svg',
                  height: 100.0),
              Text(
                "أهلا بكم في كتالوج",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "ادخل رقم هاتفك ، حتى نتمكن من إرسال رمز التأكيد إليك",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IntlPhoneField(
                      initialCountryCode: 'SY',
                      decoration: InputDecoration(
                        labelText: 'رقم الهاتف ..',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        print('Country changed to: ' + country.name);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GetBuilder<AuthViewModel>(
                builder: (controller) => CheckboxListTile(
                  title: Text.rich(
                    TextSpan(
                        text: ' الرجاء الموافقة على ',
                        style: TextStyle(fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'شروط الخدمة ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue.shade700,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // code to open / launch terms of service link here
                                }),
                          TextSpan(
                              text: ' و',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'سياسة الخصوصية',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blue.shade700,
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print("object");
                                      }),
                                TextSpan(
                                  text: ' لإكمال التسجيل. ',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ]),
                        ]),
                  ),
                  value: controller.checkedValue,
                  onChanged: (newValue) {
                    print(newValue);
                    controller.oncheckedValueChanged(newValue!);
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Column(
                children: [
                  SizedBox(height: 30),
                  RoundedButton(
                    color: AppColor.BlueBtn,
                    minimumWidth: 230,
                    disabledColor: AppColor.AccentBlue.withOpacity(0.3),
                    onPressed: () {
                      Get.to(SmsScreen());
                      // verifyPhone('+963${_phoneNumberController.text}');
                    },
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'التالي',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          // Icon(Icons.arrow_circle_left_outlined,
                          //     color:  AppColor.GreyIcons),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
