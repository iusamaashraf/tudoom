import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatRoomPrivateGroup/privateGroubcontroller.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class PrivateChat extends StatelessWidget {
  final controller = Get.put(PrivateGroubController());

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
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new)),
                    SizedBox(
                      width: 9,
                    ),
                    Textcustam(
                      text: 'Kierra Vetrovs',
                      size: 20,
                      weight: FontWeight.w600,
                    ),
                  ],
                ),
                Icon(Icons.more_vert)
              ],
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
                itemCount: controller.privateChat.length,
                itemBuilder: (context, index) {
                  return index == 0 || index == 1 || index == 3 || index == 4
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: lightgray,
                              ),
                              margin: EdgeInsets.only(bottom: 12, right: 6),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Textcustam(
                                    text: controller.privateChat[index]),
                              ),
                            ),
                          ],
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
                                    text: controller.privateChat[index]),
                              ),
                            ),
                          ],
                        );
                },
              ),
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
