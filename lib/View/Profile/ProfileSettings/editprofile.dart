import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ProfileControllerss/EditProfilecontroller.dart/editprofilecon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';
import 'package:tudoom/utils/images.dart';

class EditProfile extends StatelessWidget {
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
                    text: 'Edit Profile',
                    size: 22,
                    weight: FontWeight.w700,
                  )
                ],
              ),
              Divider(
                color: lightgray,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 121,
                width: 121,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(Images.post))),
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: '  Name',
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 5,
              ),
              Textfiledcustam(
                controller: controller.name,
                hinttext: '@example',
              ),
              SizedBox(
                height: 2,
              ),
              Textcustam(
                text:
                    'Help people discover your account by using the name you\'re known by: either your full name, nickname, or business name.',
                col: gray,
                size: 11,
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: '  Usename',
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 5,
              ),
              Textfiledcustam(
                controller: controller.usernmae,
                hinttext: 'Usename',
              ),
              SizedBox(
                height: 2,
              ),
              Textcustam(
                text:
                    'In most cases, you\'ll be able to change your username back to py6699874 for another 14 days. Learn more',
                col: gray,
                size: 11,
              ),
              SizedBox(
                height: 20,
              ),
              Textcustam(
                text: 'Personal Information',
                size: 18,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text:
                    'Provide your personal information, even if the account is used for a business, a pet or something else. This won\'t be a part of your public profile',
                col: gray,
                size: 11,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'Email',
                    weight: FontWeight.w600,
                  ),
                  Container(
                    width: 175,
                    //color: appColor,
                    child: TextField(
                      controller: controller.email,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Yadavjatin@gmail.com',
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              Divider(
                height: 0,
                color: Colors.black,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'Phone No.',
                    weight: FontWeight.w600,
                  ),
                  Container(
                    width: 175,
                    //color: appColor,
                    child: TextField(
                      controller: controller.phoneNo,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '+91893294902',
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              Divider(
                height: 0,
                color: Colors.black,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'Gender',
                    weight: FontWeight.w600,
                  ),
                  Container(
                    width: 175,
                    //color: appColor,
                    child: TextField(
                      controller: controller.Gender,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Male',
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
              Divider(
                height: 0,
                color: Colors.black,
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: RoundButton(
          title: 'Continue',
          backcol: appColor,
          fun: () {},
        ),
      ),
    );
  }
}
