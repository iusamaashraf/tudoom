import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/RegisterUser/userRegisterController.dart';
import 'package:tudoom/View/RegisterUser/widget/socialMediaLogin.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';
import 'package:tudoom/utils/images.dart';

class UserNameAndPAssword extends StatelessWidget {
  final controller = Get.put(RegisterUserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
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
                      text: 'Steps 3/3',
                      size: 12,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
                // SizedBox(
                //   height: Get.height * 0.01,
                // ),
                Textcustam(
                  text: 'Create Account',
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
                          text: 'create your',
                        ),
                        TextSpan(
                          text: ' username',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: '  and',
                        ),
                        TextSpan(
                          text: ' password',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Textfiledcustam(
                  controller: controller.Fulname,
                  hinttext: 'Enter your full name',
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    controller.selectDate(context);
                  },
                  child: CustamContainer(
                    wigth: double.infinity,
                    hight: Get.height * 0.06,
                    bordercol: Colors.grey,
                    borders: true,
                    cir: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Enter your DOB',
                            col: Colors.grey,
                          ),
                          Obx(() => Textcustam(
                                text:
                                    '${controller.selectedDate.value.day.toString().padLeft(2, '0')}/${controller.selectedDate.value.month.toString().padLeft(2, '0')}/${controller.selectedDate.value.year}',
                                col: Colors.grey,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Textfiledcustam(
                  controller: controller.userName,
                  hinttext: 'create your username',
                  lasticon: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Textfiledcustam(
                  controller: controller.password,
                  hinttext: 'enter password',
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  width: Get.width,
                  // color: Colors.amber,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                          height: 1.4,
                          fontSize: 12,
                          color: Color(0xff808080),
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: 'By continuing you can agree to our ',
                        ),
                        TextSpan(
                          text: ' terms and conditions',
                          style: TextStyle(color: appColor),
                        ),
                        TextSpan(
                          text: '  and',
                        ),
                        TextSpan(
                          text: ' Privecy Policy',
                          style: TextStyle(color: appColor),
                        ),
                      ],
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
                  height: Get.height * 0.01,
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
                        Navigator.pushNamed(context, "/LoginScreen");
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
                  height: Get.height * 0.01,
                ),
                SocialMediaLogin()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: Get.height * 0.150,
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
