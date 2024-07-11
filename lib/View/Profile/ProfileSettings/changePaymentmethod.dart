import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ProfileControllerss/EditProfilecontroller.dart/editprofilecon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';
import 'package:tudoom/utils/images.dart';

class ChangePaymentMethods extends StatelessWidget {
  final controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 57,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new)),
                  Textcustam(
                    text: 'Change Payment Methods',
                    size: 20,
                    weight: FontWeight.w600,
                  ),
                  CustamContainer(
                    wigth: 23,
                    hight: 23,
                    cir: 5,
                    col: appColor,
                    child: Icon(
                      Icons.add,
                      color: white,
                      size: 20,
                    ),
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
              CustamContainer(
                wigth: double.infinity,
                hight: 270,
                col: lightgray,
                cir: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Phone Pe',
                            size: 18,
                            weight: FontWeight.w600,
                          ),
                          CustamContainer(
                            wigth: 23,
                            hight: 23,
                            cir: 5,
                            col: appColor,
                            child: SvgPicture.asset(Images.Line),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Textfiledcustam(
                        hinttext: 'Your PhonePe number',
                        height: 48,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Textfiledcustam(
                        hinttext: 'Account Password',
                        height: 48,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Textfiledcustam(
                        hinttext: 'Account Password',
                        height: 48,
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 270,
                col: lightgray,
                cir: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Phone Pe',
                            size: 18,
                            weight: FontWeight.w600,
                          ),
                          CustamContainer(
                            wigth: 23,
                            hight: 23,
                            cir: 5,
                            col: appColor,
                            child: SvgPicture.asset(Images.Line),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Textfiledcustam(
                        hinttext: 'Your PhonePe number',
                        height: 48,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Textfiledcustam(
                        hinttext: 'Account Password',
                        height: 48,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Textfiledcustam(
                        hinttext: 'Account Password',
                        height: 48,
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: RoundButton(
          title: 'Update',
          backcol: appColor,
          fun: () {
            controller.paymentMethodChange(context);
          },
        ),
      ),
    );
  }
}
