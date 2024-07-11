import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/dailyTasksControlle.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Tasks/completed.dart';
import 'package:tudoom/View/TudoomWorld/AllTheScreensForTudoom/Tasks/dailylist.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class DailyTasks extends StatelessWidget {
  final controller = Get.put(DailyTasksController());
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
                      text: 'Daily Tasks',
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

//

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
                        controller.tasklist.value = 0;
                      },
                      child: CustamContainer(
                        wigth: 84,
                        hight: 45,
                        borders: controller.tasklist == 0 ? false : true,
                        bordercol: gray,
                        col: controller.tasklist == 0
                            ? appColor
                            : Colors.transparent,
                        cir: 30,
                        child: Textcustam(
                            text: 'Daily',
                            weight: FontWeight.w600,
                            col: controller.tasklist == 0 ? white : gray),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.tasklist.value = 1;
                      },
                      child: CustamContainer(
                        wigth: 95,
                        hight: 45,
                        borders: controller.tasklist == 1 ? false : true,
                        cir: 30,
                        col: controller.tasklist == 1
                            ? appColor
                            : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Weekly',
                          weight: FontWeight.w600,
                          col: controller.tasklist == 1 ? white : gray,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.tasklist.value = 2;
                      },
                      child: CustamContainer(
                        wigth: 100,
                        hight: 45,
                        borders: controller.tasklist == 2 ? false : true,
                        cir: 30,
                        col: controller.tasklist == 2
                            ? appColor
                            : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Completed',
                          weight: FontWeight.w600,
                          col: controller.tasklist == 2 ? white : gray,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
                child: Obx(() => controller.tasklist == 0
                    ? DailyList()
                    : controller.tasklist == 2
                        ? Completed()
                        : SizedBox())),
          ],
        ),
      ),
    );
  }
}
