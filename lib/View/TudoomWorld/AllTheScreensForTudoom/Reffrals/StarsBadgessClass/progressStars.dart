import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/ReffralsController/starsBadgesController.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/progress.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class ProgressStars extends StatelessWidget {
  final controller = Get.put(StarsBadgesController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: controller.progress.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 15.0,
            mainAxisExtent: 205),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              ///  Show showdialogFun  Dialog
              controller.showdialogFun(context);
            },
            child: CustamContainer(
              wigth: 182,
              hight: 200,
              col: controller.progress[index].col,
              cir: 10,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Textcustam(
                    text: controller.progress[index].task,
                    size: 12,
                    weight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(controller.progress[index].pic),
                  SizedBox(
                    height: 9,
                  ),
                  Textcustam(
                    text: controller.progress[index].title,
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  CustomPaint(
                    size: Size(103, 16),
                    painter: MyProgressPainter(
                      percent: 0.3,
                      backgroundColor: Colors.grey.shade200,
                      progressColor: Color(0xffFF9B30),
                      borderRadius: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Textcustam(
                        text: controller.progress[index].complect,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      Textcustam(
                        text: '% Done',
                        size: 16,
                        weight: FontWeight.w500,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
