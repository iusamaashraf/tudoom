import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatRoomPrivateGroup/privateGroubcontroller.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class GropChatScreen extends StatelessWidget {
  final controller = Get.put(PrivateGroubController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 57,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new)),
                    Container(
                      width: Get.width * 0.5,
                      //   color: Colors.amber,
                      child: Text(
                        ' Marketing Department',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Textcustam(
                      text: ' | ',
                      col: grayCol,
                    ),
                    Textcustam(
                      text: '230+',
                      weight: FontWeight.w700,
                      col: appColor,
                    ),
                    Textcustam(
                      text: ' | ',
                      col: grayCol,
                    ),
                    Textcustam(
                      text: '5 LIVE',
                      weight: FontWeight.w700,
                      col: appColor,
                    ),
                  ],
                ),
                Icon(Icons.more_vert)
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Divider(
              color: lightgray,
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return index == 0 ||
                          index == 1 ||
                          index == 2 ||
                          index == 3 ||
                          index == 4 ||
                          index == 6
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        controller.groupChat[index].image),
                                    radius: 10,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Textcustam(
                                    text: controller.groupChat[index].name,
                                    weight: FontWeight.w700,
                                    col: controller.groupChat[index].col,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Textcustam(
                                    text: controller.groupChat[index].time,
                                    col: grayCol,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: lightgray,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Textcustam(
                                      text:
                                          controller.groupChat[index].message),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: appColor,
                              ),
                              margin: EdgeInsets.only(bottom: 12, left: 10),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Textcustam(
                                    col: white,
                                    text: controller.groupChat[index].message),
                              ),
                            ),
                          ],
                        );
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CustamContainer(
              wigth: double.infinity,
              hight: 48,
              col: lightgray, //Color(0xffD9D9D9),
              cir: 15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outline_sharp,
                      color: Color(0xff3A3939),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    )),
                    SizedBox(
                      width: 7,
                    ),
                    Textcustam(
                      text: 'GAMES',
                      col: appColor,
                      size: 16,
                      weight: FontWeight.w700,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
