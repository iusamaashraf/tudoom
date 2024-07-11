import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/SallerProfile/sellController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';

class AddGpay extends StatelessWidget {
  final controller = Get.put(SellController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
        backgroundColor: appColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: white,
                )),
            Textcustam(
              text: 'Add Gpay',
              size: 20,
              weight: FontWeight.w600,
              col: white,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Textfiledcustam(
                  controller: controller.fulname,
                  hinttext: 'Enter Full Name',
                  lasticon: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Textcustam(
                      text: 'EX-THEPOW',
                      col: grayCol,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Textfiledcustam(
                  controller: controller.GpayNo,
                  hinttext: 'Enter  Gpay Numper',
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: RoundButton(
            title: 'Sell',
            fun: () {
              Navigator.pushNamed(context, "/VerificationSell");
            },
            backcol: appColor,
          ),
        ),
      ),
    );
  }
}
