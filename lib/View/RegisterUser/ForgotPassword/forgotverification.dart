import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/RegisterUser/forgotpasswordConteroller.dart';
import 'package:tudoom/View/RegisterUser/widget/socialMediaLogin.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';
import 'package:tudoom/utils/images.dart';

class ForgotVerification extends StatelessWidget {
  final controller = Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.07,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_sharp)),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Center(
                child: Textcustam(
                  text: 'Forgot Password',
                  size: 32,
                  weight: FontWeight.w600,
                ),
              ),
              Container(
                width: Get.width * 0.7,
                margin: EdgeInsets.all(6),
                // color: Colors.amber,
                child: Center(
                  child: Textcustam(
                    align: TextAlign.center,
                    text: 'Enter your registered email or phone verification',
                    size: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Textfiledcustam(
                controller: controller.email,
                hinttext: 'enter your email ',

                //  Send Otp Button
                lasticon: Padding(
                  padding: const EdgeInsets.only(top: 14, right: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Textcustam(
                      text: 'send OTP',
                      size: 12,
                      weight: FontWeight.w800,
                      col: Color(0xff737373),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Textfiledcustam(
                controller: controller.otp,
                hinttext: 'enter OTP',

                // resend it OTP Button
                lasticon: Padding(
                  padding: const EdgeInsets.only(top: 14, right: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Textcustam(
                      text: 'resend it',
                      size: 12,
                      weight: FontWeight.w800,
                      col: Color(0xff737373),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              RoundButton(
                title: 'continue',
                fun: () {
                  Navigator.restorablePushNamedAndRemoveUntil(
                      context, "/BottomAppBarCus", (route) => false);
                },
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textcustam(
                    text: 'already have an account ',
                    size: 12,
                    weight: FontWeight.w700,
                    col: gray,
                  ),

                  // Move to Sigin Screen
                  GestureDetector(
                    onTap: () {},
                    child: Textcustam(
                      text: ' Login?',
                      weight: FontWeight.w700,
                      size: 12,
                      col: appColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              SocialMediaLogin()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: Get.height * 0.170,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            // color: Colors.amber,
            image: DecorationImage(
                image: AssetImage(
                  Images.loginb,
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
