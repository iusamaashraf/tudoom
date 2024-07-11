import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ProfileControllerss/EditProfilecontroller.dart/editprofilecon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';

class ChangePassword extends StatelessWidget {
  final controller = Get.put(EditProfileController());
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
                    text: 'Change Password',
                    size: 22,
                    weight: FontWeight.w700,
                  )
                ],
              ),
              Divider(
                color: lightgray,
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: '  New Password',
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 5,
              ),
              Textfiledcustam(
                controller: controller.newPassword,
                hinttext: 'New Password ',
              ),
              SizedBox(
                height: 15,
              ),
              Textcustam(
                text: '  Confirm Password',
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 5,
              ),
              Textfiledcustam(
                controller: controller.confirmPassword,
                hinttext: 'Confirm Password ',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: RoundButton(
          title: 'Update Password',
          backcol: appColor,
          fun: () {},
        ),
      ),
    );
  }
}
