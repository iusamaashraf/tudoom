import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/ReffralsController/starsBadgesController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/progress.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class CompletedStars extends StatelessWidget {
  final controller = Get.put(StarsBadgesController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          SizedBox(
            height: 20,
          ),
          CustamContainer(
            wigth: double.infinity,
            hight: 188,
            col: Color(0xffdbf3f0),
            cir: 15,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.Bronze,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Textcustam(
                          text: 'Bronze 3',
                          size: 20,
                          weight: FontWeight.w600,
                          col: appColor,
                        ),
                        Textcustam(
                          text: 'Task Completed : 150/300',
                          col: grayCol,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Textcustam(
                      text: 'Lvl 21',
                      size: 16,
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomPaint(
                      size: Size(180, 16),
                      painter: MyProgressPainter(
                        percent: 0.3,
                        backgroundColor: Colors.grey.shade200,
                        progressColor: Color(0xffFF9B30),
                        borderRadius: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Textcustam(
                      text: 'Lvl 22',
                      size: 16,
                      weight: FontWeight.w700,
                    ),
                  ],
                )
              ],
            ),
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.Completed.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 15.0,
                mainAxisExtent: 205),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: CustamContainer(
                  wigth: 182,
                  hight: 200,
                  col: controller.Completed[index].col,
                  cir: 10,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Textcustam(
                        text: controller.Completed[index].task,
                        size: 14,
                        col: appColor,
                        weight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(controller.Completed[index].pic),
                      SizedBox(
                        height: 9,
                      ),
                      Textcustam(
                        text: controller.Completed[index].title,
                        size: 16,
                        weight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 38,
                        width: 130,
                        child: RoundButton(
                          title: 'Completed',
                          fun: () {},
                          backcol: appColor,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
