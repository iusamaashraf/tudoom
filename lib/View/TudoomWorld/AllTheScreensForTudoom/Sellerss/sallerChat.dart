import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatRoomPrivateGroup/privateGroubcontroller.dart';
import 'package:tudoom/Controller/SallerProfile/sallerchatControll.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class SallerChatScreen extends StatelessWidget {
  final controller = Get.put(SallerProfileChat());

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
                  text: 'Chat with the seller',
                  size: 20,
                  weight: FontWeight.w600,
                ),
              ],
            ),
            Divider(
              color: lightgray,
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Textcustam(
                      text: 'Amount   ',
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    Textcustam(
                      text: '\$ 51.4',
                      col: Colors.green,
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Textcustam(
                      text: 'Order Status   ',
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    Textcustam(
                      text: 'Pending',
                      size: 16,
                      weight: FontWeight.w500,
                      col: Color(0xffD15567),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                padding: EdgeInsets.only(top: 10),
                itemCount: controller.sallerChat.length,
                itemBuilder: (context, index) {
                  return index == 0 || index == 1 || index == 4 || index == 5
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: lightgray,
                              ),
                              margin: EdgeInsets.only(bottom: 12, right: 27),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Textcustam(
                                    text: controller.sallerChat[index]),
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
                                color: lightgray,
                              ),
                              margin: EdgeInsets.only(bottom: 12, left: 27),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Textcustam(
                                    col: Colors.black54,
                                    text: controller.sallerChat[index]),
                              ),
                            ),
                          ],
                        );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustamContainer(
                  wigth: 270,
                  hight: 48,
                  col: lightgray, //Color(0xffD9D9D9),
                  cir: 25,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: AssetImage(Images.reffrals2),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type your message here'),
                        )),
                        SizedBox(
                          width: 7,
                        ),
                        SvgPicture.asset(Images.smile)
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: lightgray,
                  child: SvgPicture.asset(
                    Images.Sendto,
                  ),
                )
              ],
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
