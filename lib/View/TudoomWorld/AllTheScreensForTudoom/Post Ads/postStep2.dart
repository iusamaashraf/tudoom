import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/Post%20AdsController/postAdController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class PostStep2 extends StatelessWidget {
  final controller = Get.put(PostAdController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                  text: 'Step 2/4',
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
              text: 'Set up your payment methods',
              size: 19,
              weight: FontWeight.w600,
            ),
            SizedBox(
              height: 3,
            ),
            Textcustam(
              text:
                  'These payment methods will be shown on your ads and by these people will send money to you.',
              weight: FontWeight.w500,
              col: gray,
              size: 12,
            ),
            SizedBox(
              height: 15,
            ),
            Obx(
              () => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textcustam(
                        text: 'Google Pay',
                        size: 17,
                        weight: FontWeight.w500,
                      ),
                      Checkbox(
                        value: controller.googlepay.value,
                        onChanged: (value) {
                          controller.googlepay.value = value!;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textcustam(
                        text: 'Phone pe',
                        size: 17,
                        weight: FontWeight.w500,
                      ),
                      Checkbox(
                        value: controller.phonepay.value,
                        onChanged: (value) {
                          controller.phonepay.value = value!;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textcustam(
                        text: 'IMPS',
                        size: 17,
                        weight: FontWeight.w500,
                      ),
                      Checkbox(
                        value: controller.imps.value,
                        onChanged: (value) {
                          controller.imps.value = value!;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textcustam(
                        text: 'Paytm',
                        size: 17,
                        weight: FontWeight.w500,
                      ),
                      Checkbox(
                        value: controller.paytm.value,
                        onChanged: (value) {
                          controller.paytm.value = value!;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textcustam(
                        text: 'Paypal',
                        size: 17,
                        weight: FontWeight.w500,
                      ),
                      Checkbox(
                        value: controller.paypal.value,
                        onChanged: (value) {
                          controller.paypal.value = value!;
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
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
                  Navigator.pushNamed(context, "/PostAddStep3");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
