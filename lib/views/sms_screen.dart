import 'package:catalog_realestate/utils/app_color.dart';
import 'package:catalog_realestate/views/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmsScreen extends StatelessWidget {
  const SmsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            child: Column(
              children: [
                SvgPicture.asset('assets/images/AcrossMENA _logo.svg',
                    height: 100.0),
                Text(
                  "تأكيد التسجيل",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "لقد قمنا بأرسال رسالة تتضمن رمز التأكيد على الرقم الذي قمت ب ادخاله",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Form(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        // controller: _smsController,
                        autocorrect: false,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: '****',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      ' اعادة ارسال رمز التأكيد',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 180,
                ),
                Column(
                  children: [
                    SizedBox(height: 30),
                    RoundedButton(
                      color: AppColor.BlueBtn,
                      minimumWidth: 230,
                      disabledColor: AppColor.AccentBlue.withOpacity(0.3),
                      onPressed: () {
                        // AuthService().signInWithOTP(
                        //     context, _smsController.text, widget.verificationId);
                      },
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'التالي',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            // Icon(Icons.arrow_circle_left_outlined,
                            //     color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
