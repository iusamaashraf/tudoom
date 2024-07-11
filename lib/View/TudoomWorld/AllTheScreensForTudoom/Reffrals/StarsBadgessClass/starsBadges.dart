import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/ReffralsController/starsBadgesController.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Reffrals/StarsBadgessClass/CompletedStars.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Reffrals/StarsBadgessClass/progressStars.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/progress.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class StarsBadges extends StatelessWidget {
  final controller = Get.put(StarsBadgesController());
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
                      text: 'Stars and Badges',
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
                      wigth: 120,
                      hight: 45,
                      borders: controller.indexcount == 0 ? false : true,
                      cir: 30,
                      col: controller.indexcount == 0
                          ? appColor
                          : Colors.transparent,
                      bordercol: gray,
                      child: Textcustam(
                        text: 'Completed',
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
                      wigth: 110,
                      hight: 45,
                      borders: controller.indexcount == 1 ? false : true,
                      cir: 30,
                      col: controller.indexcount == 1
                          ? appColor
                          : Colors.transparent,
                      bordercol: gray,
                      child: Textcustam(
                        text: 'Progress',
                        weight: FontWeight.w600,
                        col: controller.indexcount == 1 ? white : gray,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Obx(() =>
                controller.indexcount == 0 ? CompletedStars() : ProgressStars())
          ],
        ),
      ),
    );
  }
}
