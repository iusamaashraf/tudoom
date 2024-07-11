import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/Post%20AdsController/postAdController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';

class PostAddStep3 extends StatelessWidget {
  final controller = Get.put(PostAdController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 57,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_new)),
                      SizedBox(
                        width: 10,
                      ),
                      Textcustam(
                        text: 'Post Ads',
                        size: 22,
                        weight: FontWeight.w700,
                      )
                    ],
                  ),
                  Textcustam(
                    text: 'Step 3/4',
                    size: 16,
                    weight: FontWeight.w500,
                    col: grayCol,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: lightgray,
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: 'Set up your payment Details',
                size: 19,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 3,
              ),
              Textcustam(
                text:
                    'Your payment details will be saved for next time you can change them in settings on your profile page',
                size: 12,
                col: grayCol,
              ),
              Divider(
                color: grayCol,
                height: 40,
              ),
              Textcustam(
                text: 'Google Pay',
                size: 18,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 15,
              ),
              Textfiledcustam(
                controller: controller.gpayNo,
                hinttext: 'Your Gpay number',
              ),
              SizedBox(
                height: 15,
              ),
              Textfiledcustam(
                controller: controller.accountpasswoerd,
                hinttext: 'Account Password',
              ),
              SizedBox(
                height: 15,
              ),
              Textfiledcustam(
                controller: controller.apassword,
                hinttext: 'Account Password',
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 50,
                color: grayCol,
              ),
              SizedBox(
                height: 5,
              ),
              Textcustam(
                text: 'Phone Pe',
                size: 18,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 15,
              ),
              Textfiledcustam(
                controller: controller.phonepaycontroller,
                hinttext: 'Your PhonePe number',
              ),
              SizedBox(
                height: 15,
              ),
              Textfiledcustam(
                controller: controller.phonepaypassword,
                hinttext: 'Account Password',
              ),
              SizedBox(
                height: 15,
              ),
              Textfiledcustam(
                controller: controller.phonepayAccountpassword,
                hinttext: 'Account Password',
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: grayCol,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CustamContainer(
                      wigth: 154,
                      hight: 48,
                      bordercol: grayCol,
                      borders: true,
                      cir: 10,
                      child: Textcustam(
                        text: 'Back',
                        size: 18,
                        weight: FontWeight.w600,
                        col: grayCol,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 48,
                    child: RoundButton(
                      title: 'Next',
                      backcol: appColor,
                      fun: () {
                        Navigator.pushNamed(context, "/PostAddStep4");
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
