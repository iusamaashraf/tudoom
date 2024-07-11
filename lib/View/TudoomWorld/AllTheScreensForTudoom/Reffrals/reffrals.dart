import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/ReffralsController/reffralsController.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Reffrals/myReffrals.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Reffrals/raffalList.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class Reffrals extends StatelessWidget {
  final controller = Get.put(ReffralsControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
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
                      text: 'Reffrals',
                      size: 22,
                      weight: FontWeight.w700,
                    )
                  ],
                ),
                SvgPicture.asset(Images.notilines)
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
            Obx(
              () => Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.indexcount.value = 0;
                    },
                    child: CustamContainer(
                      wigth: 100,
                      hight: 45,
                      borders: controller.indexcount == 0 ? false : true,
                      cir: 30,
                      col: controller.indexcount == 0
                          ? appColor
                          : Colors.transparent,
                      bordercol: gray,
                      child: Textcustam(
                        text: 'Reffer',
                        weight: FontWeight.w600,
                        col: controller.indexcount == 0 ? white : gray,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.indexcount.value = 1;
                    },
                    child: CustamContainer(
                      wigth: 120,
                      hight: 45,
                      borders: controller.indexcount == 1 ? false : true,
                      cir: 30,
                      col: controller.indexcount == 1
                          ? appColor
                          : Colors.transparent,
                      bordercol: gray,
                      child: Textcustam(
                        text: 'My Reffrals',
                        weight: FontWeight.w600,
                        col: controller.indexcount == 1 ? white : gray,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Obx(() =>
                controller.indexcount == 0 ? ReffralList() : MyReffralsList())
          ],
        ),
      ),
    );
  }
}
