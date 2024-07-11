import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/addCreditsCon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';

class TransferSCredit extends StatelessWidget {
  final controller = Get.put(AddCreditsController());
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
                    text: 'Transfer Credit',
                    size: 22,
                    weight: FontWeight.w700,
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
                text: ' Friend Username',
                size: 18,
                //  weight: FontWeight.w00,
              ),
              SizedBox(
                height: 5,
              ),
              Textfiledcustam(
                controller: controller.friendUsername,
                height: 48,
                hinttext: '@example',
                lasticon: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 9),
                  child: Textcustam(
                    text: 'Search',
                    weight: FontWeight.w600,
                    col: appColor,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: ' Enter Amount',
                size: 18,
                // weight: FontWeight.w500,
              ),
              SizedBox(
                height: 5,
              ),
              Textfiledcustam(
                controller: controller.enterAmount,
                height: 48,
                hinttext: 'ex - 24 credits',
                lasticon: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 9),
                  child: Textcustam(
                    text: '469 C',
                    weight: FontWeight.w600,
                    col: grayCol,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: ' Account Password',
                size: 18,
                // weight: FontWeight.w500,
              ),
              SizedBox(
                height: 5,
              ),
              Textfiledcustam(
                controller: controller.accountPassword,
                height: 48,
              ),
              SizedBox(
                height: 25,
              ),
              RoundButton(
                title: 'Send Credits',
                backcol: appColor,
                fun: () {
                  Navigator.pushNamed(context, "/FriendListShow");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
