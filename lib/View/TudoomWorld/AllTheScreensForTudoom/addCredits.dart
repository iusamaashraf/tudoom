import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/addCreditsCon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class AddCredits extends StatelessWidget {
  final controller = Get.put(AddCreditsController());

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
                  text: 'Add Credits  ',
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
            Expanded(
              child: ListView.builder(
                itemCount: controller.addCradit.length,
                //  shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustamContainer(
                      hight: 240,
                      wigth: double.infinity,
                      bordercol: lightgray,
                      borders: true,
                      cir: 10,
                      child: Column(
                        children: [
                          Container(
                            height: 72,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: controller.addCradit[index].col,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                            child: Center(
                              child: Textcustam(
                                text: controller.addCradit[index].messing,
                                size: 20,
                                weight: FontWeight.w600,
                                col: white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Textcustam(
                                  text: 'Credits Amount',
                                  size: 16,
                                  weight: FontWeight.w500,
                                  col: grayCol,
                                ),
                                Textcustam(
                                  text: '1000C',
                                  size: 16,
                                  weight: FontWeight.w500,
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: lightgray,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Textcustam(
                                  text: 'Price',
                                  size: 16,
                                  weight: FontWeight.w500,
                                  col: grayCol,
                                ),
                                Textcustam(
                                  text: '\$50',
                                  size: 16,
                                  weight: FontWeight.w500,
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: lightgray,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 43,
                            width: Get.width * 0.7,
                            child: RoundButton(
                              backcol: appColor,
                              title: 'Buy Now',
                              fun: () {
                                Navigator.pushNamed(
                                    context, "/MemberShipPaymentMethod");
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
//  d69a00
//c0c0c0
//d1384e