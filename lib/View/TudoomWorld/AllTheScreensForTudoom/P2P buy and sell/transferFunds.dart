import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';

class TransferFunds extends StatelessWidget {
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
                      text: 'Transfer Funds ',
                      size: 22,
                      weight: FontWeight.w700,
                    )
                  ],
                ),
                GestureDetector(
                    onTap: () {},
                    child: Textcustam(
                      text: 'Step 1/4',
                      col: grayCol,
                    ))
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
              text: ' Enter Credits Amount',
              size: 18,
              weight: FontWeight.w500,
            ),
            SizedBox(
              height: 7,
            ),
            Textfiledcustam(
              hinttext: 'ex-234C',
            ),
            Textcustam(
              text: '  Enter how much credits you want to buy',
              size: 10,
              col: gray,
            ),
            SizedBox(
              height: 20,
            ),
            CustamContainer(
              wigth: double.infinity,
              hight: 64,
              col: lightgray,
              cir: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Total Price'), Icon(Icons.more_horiz)],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CustamContainer(
                wigth: Get.width * 0.4,
                hight: 48,
                borders: true,
                bordercol: grayCol,
                cir: 8,
                child: Textcustam(
                  text: 'Cancel',
                  size: 18,
                  weight: FontWeight.w500,
                  col: grayCol,
                ),
              ),
            ),
            Container(
              width: Get.width * 0.4,
              height: 48,
              child: RoundButton(
                title: 'Continue',
                backcol: appColor,
                fun: () {
                  Navigator.pushNamed(context, "/buyingCredits");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
