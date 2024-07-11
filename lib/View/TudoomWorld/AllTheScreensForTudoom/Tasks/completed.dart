import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/dailyTasksControlle.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/progress.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class Completed extends StatelessWidget {
  final controller = Get.put(DailyTasksController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustamContainer(
            wigth: double.infinity,
            hight: 162,
            cir: 15,
            col: lightgray,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textcustam(
                        text: 'Task completed',
                        weight: FontWeight.w500,
                        size: 15,
                      ),
                      Textcustam(
                        text: '256',
                        weight: FontWeight.w700,
                        size: 15,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textcustam(
                        text: 'Total reward earned',
                        weight: FontWeight.w500,
                        size: 15,
                      ),
                      Textcustam(
                        text: '500 TP',
                        weight: FontWeight.w700,
                        size: 15,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: gray,
                  height: 0,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Textcustam(
                    text: 'Reward will automatically claimed into your account',
                    col: grayCol,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.daliylist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustamContainer(
                  wigth: double.infinity,
                  hight: 270,
                  bordercol: lightgray,
                  cir: 15,
                  borders: true,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ListTile(
                          leading: Container(
                            height: 78,
                            width: 78,
                            decoration: BoxDecoration(
                              color: controller
                                  .daliylist[index].col, // 588BF3   // 33A3D6
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  Image.asset(controller.daliylist[index].type),
                            ),
                          ),
                          title: Textcustam(
                            text: controller.daliylist[index].messing,
                            size: 16,
                            weight: FontWeight.w600,
                          ),
                          subtitle: Textcustam(
                            text:
                                'Lorem ipsum dolor sit amet consectetur. Suspendisse egestas pulvinar non purus aliquet convallis tempor diam enim. Sit mauris quis in in augue ornare tellus.',
                            size: 13,
                          ),
                        ),
                      ),
                      Divider(
                        color: lightgray,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Textcustam(
                                text: 'Reward',
                                size: 13,
                                col: grayCol,
                              ),
                              Textcustam(
                                text: '500 TP',
                                size: 32,
                                weight: FontWeight.w700,
                              )
                            ],
                          ),
                          Container(
                            height: 82,
                            child: VerticalDivider(
                              color: lightgray,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Textcustam(
                                  text: 'Progress  40%',
                                  col: grayCol,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CustomPaint(
                                size: Size(165, 19),
                                painter: MyProgressPainter(
                                  percent: 1,
                                  backgroundColor: Colors.grey.shade400,
                                  progressColor: Color(0xffFF9B30),
                                  borderRadius: 20.0,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
