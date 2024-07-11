import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/tudoomStoreController/tudoomStoreGiftCon.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Tudoom%20Store/widget/GiftsList.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Tudoom%20Store/widget/avatars.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Tudoom%20Store/widget/emojisList.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class TudoomStoreGift extends StatelessWidget {
  final controller = Get.put(TudoomStoreController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
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
                  text: 'Tudoom Store',
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
              endIndent: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.SelectBox.value = 0;
                      },
                      child: CustamContainer(
                        wigth: 84,
                        hight: 45,
                        borders: controller.SelectBox == 0 ? false : true,
                        bordercol: gray,
                        col: controller.SelectBox == 0
                            ? appColor
                            : Colors.transparent,
                        cir: 30,
                        child: Textcustam(
                            text: 'Gifts',
                            weight: FontWeight.w600,
                            col: controller.SelectBox == 0 ? white : grayCol),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.SelectBox.value = 1;
                      },
                      child: CustamContainer(
                        wigth: 100,
                        hight: 45,
                        borders: controller.SelectBox == 1 ? false : true,
                        cir: 30,
                        col: controller.SelectBox == 1
                            ? appColor
                            : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Avatars',
                          weight: FontWeight.w600,
                          col: controller.SelectBox == 1 ? white : grayCol,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.SelectBox.value = 2;
                      },
                      child: CustamContainer(
                        wigth: 95,
                        hight: 45,
                        borders: controller.SelectBox == 2 ? false : true,
                        cir: 30,
                        col: controller.SelectBox == 2
                            ? appColor
                            : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Emojis',
                          weight: FontWeight.w600,
                          col: controller.SelectBox == 2 ? white : grayCol,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.SelectBox.value = 3;
                      },
                      child: CustamContainer(
                        wigth: 95,
                        hight: 45,
                        borders: controller.SelectBox == 3 ? false : true,
                        cir: 30,
                        col: controller.SelectBox == 3
                            ? appColor
                            : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Packs',
                          weight: FontWeight.w600,
                          col: controller.SelectBox == 3 ? white : grayCol,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Obx(
                  () => controller.SelectBox.value == 0
                      ? GiftsList()
                      : controller.SelectBox.value == 1
                          ? AvatarsList()
                          : controller.SelectBox.value == 2
                              ? EmojisList()
                              : SizedBox(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
