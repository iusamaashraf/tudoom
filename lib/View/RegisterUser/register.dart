import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/RegisterUser/userRegisterController.dart';
import 'package:tudoom/View/RegisterUser/widget/socialMediaLogin.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';
import 'package:tudoom/utils/images.dart';

class RegisterUserScreen extends StatelessWidget {
  final controller = Get.put(RegisterUserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.07,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_outlined),
                      ),
                      Textcustam(
                        text: 'Steps 1/3',
                        size: 12,
                        weight: FontWeight.w600,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                  Textcustam(
                    text: 'Verify it’s you',
                    size: 32,
                    weight: FontWeight.w600,
                  ),
                  Container(
                    width: Get.width * 0.550,
                    // color: Colors.amber,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(fontSize: 12, color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'the number you mentioned receives a ',
                          ),
                          TextSpan(
                            text: ' verification code',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TabBar(
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(text: 'Phone'),
                        Tab(text: 'Email'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: Get.height * 0.5,
                    // color: Colors.amber, // Adjust the height as needed
                    child: TabBarView(
                      children: [
                        // Content for the Phone tab
                    //  Add Tab 1

   //  Add Tab 2
                        // Content for the Email tab

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.height * 0.03,
                              ),
                              Textfiledcustam(
                                controller: controller.email,
                                hinttext: 'enter your email ',

                                //  Send Otp Button
                                lasticon: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 14, right: 10),
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
                                controller: controller.otpemail,
                                hinttext: 'enter OTP',

                                // resend it OTP Button
                                lasticon: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 14, right: 10),
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
                                  Navigator.pushNamed(
                                      context, '/UserNameAndPAssword');
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
                                    onTap: () {
                                      Navigator
                                          .restorablePushNamedAndRemoveUntil(
                                              context,
                                              "/LoginScreen",
                                              (route) => false);
                                    },
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
