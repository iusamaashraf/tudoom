import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/homeController/notificationcon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class Notifications extends StatelessWidget {
  final controller = Get.put(NotificationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                        text: 'Notifications',
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
              Textcustam(
                text: 'Today',
                size: 18,
                weight: FontWeight.w700,
              ),
              ListView.builder(
                padding: EdgeInsets.only(top: 15),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: CustamContainer(
                      wigth: double.infinity,
                      hight: 96,
                      cir: 10,
                      borders: true,
                      bordercol: lightgray,
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10),
                        leading: CircleAvatar(
                          backgroundColor:
                              controller.todayNotification[index].col,
                          child: Textcustam(
                            text: controller.todayNotification[index].type,
                            col: white,
                            size: 10,
                            weight: FontWeight.w800,
                          ),
                        ),
                        title: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: Get.width * 0.5,
                              // color: Colors.amber,
                              child: Textcustam(
                                text:
                                    controller.todayNotification[index].messing,
                                size: 14,
                              ),
                            ),
                            Textcustam(
                              text: '12:28 PM',
                              size: 13,
                              weight: FontWeight.w500,
                              col: grayCol,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              Textcustam(
                text: 'Yesterday',
                size: 18,
                weight: FontWeight.w700,
              ),
              ListView.builder(
                padding: EdgeInsets.only(top: 15),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: CustamContainer(
                      wigth: double.infinity,
                      hight: 96,
                      cir: 10,
                      borders: true,
                      bordercol: lightgray,
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10),
                        leading: CircleAvatar(
                          backgroundColor:
                              controller.todayNotification[index].col,
                          child: Textcustam(
                            text: controller.todayNotification[index].type,
                            col: white,
                            size: 10,
                            weight: FontWeight.w800,
                          ),
                        ),
                        title: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: Get.width * 0.5,
                              // color: Colors.amber,
                              child: Textcustam(
                                text:
                                    controller.todayNotification[index].messing,
                                size: 14,
                              ),
                            ),
                            Textcustam(
                              text: '12:28 PM',
                              size: 13,
                              weight: FontWeight.w500,
                              col: grayCol,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
