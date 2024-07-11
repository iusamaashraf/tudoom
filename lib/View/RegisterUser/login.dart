import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/RegisterUser/loginController.dart';
import 'package:tudoom/View/RegisterUser/widget/socialMediaLogin.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';
import 'package:tudoom/utils/images.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(LoginController());

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
                height: 70,
              ),
              Center(
                child: Textcustam(
                  text: 'Login or Register',
                  size: 32,
                  weight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 35,
                //color: Colors.amber,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        children: [
                          TextSpan(text: 'Enter your'),
                          TextSpan(
                              text: ' username ,Email or Phone',
                              style: TextStyle(fontWeight: FontWeight.w700)),
                          TextSpan(text: ' and '),
                          TextSpan(
                              text: 'Password',
                              style: TextStyle(fontWeight: FontWeight.w700)),
                        ])),
              ),
              SizedBox(
                height: 20,
              ),
              Textfiledcustam(
                controller: controller.email,
                hinttext: 'email,phone or username',
              ),
              SizedBox(height: 20),
              Textfiledcustam(
                controller: controller.password,
                hinttext: 'password',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          side: BorderSide(color: gray),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          value: controller.checkbox.value,
                          onChanged: (value) {
                            controller.checkbox.value = value!;
                          },
                        ),
                      ),
                      Textcustam(
                        text: 'remember me',
                        size: 12,
                        col: gray,
                      )
                    ],
                  ),

                  //   Move  forgot  NewPassword Screen
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/NewPassword");
                    },
                    child: Textcustam(
                      text: 'forgot password?',
                      size: 12,
                      weight: FontWeight.w700,
                      col: appColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RoundButton(
                title: 'login',
                fun: () {
                  Navigator.restorablePushNamedAndRemoveUntil(
                      context, "/BottomAppBarCus", (route) => false);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textcustam(
                    text: 'dont have an account ',
                    size: 12,
                    weight: FontWeight.w700,
                    col: gray,
                  ),

                  // Move to Sigin Screen
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/RegisterUserScreen");
                    },
                    child: Textcustam(
                      text: ' Register?',
                      weight: FontWeight.w700,
                      size: 12,
                      col: appColor,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              SocialMediaLogin()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 160,
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
