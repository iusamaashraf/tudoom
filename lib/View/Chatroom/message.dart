import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatcontroller.dart';
import 'package:tudoom/View/Chatroom/widget/groupChatlist.dart';
import 'package:tudoom/View/Chatroom/widget/privateChatList.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class MessageChatRoom extends StatelessWidget {
  final controller = Get.put(ChatRoomController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 57,
            ),
            Textcustam(
              text: 'Messages',
              size: 22,
              weight: FontWeight.w700,
            ),
            Divider(
              endIndent: 20,
              color: lightgray,
              height: 30,
            ),
            Container(
              height: 80,
              //color: Colors.amber,
              child: ListView.builder(
                itemCount: controller.chatperson.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundImage:
                              AssetImage(controller.chatperson[index].icon),
                        ),
                        Text(
                          controller.chatperson[index].text,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  Divider(
                    color: lightgray,
                    height: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.PrivateChat.value = true;
                          },
                          child: CustamContainer(
                            wigth: 120,
                            hight: 45,
                            borders:
                                controller.PrivateChat == false ? true : false,
                            bordercol: gray,
                            col: controller.PrivateChat == true
                                ? appColor
                                : Colors.transparent,
                            cir: 30,
                            child: Textcustam(
                                text: 'Private Chat',
                                weight: FontWeight.w600,
                                col: controller.PrivateChat == true
                                    ? white
                                    : grayCol),
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.PrivateChat.value = false;
                          },
                          child: CustamContainer(
                            wigth: 120,
                            hight: 45,
                            borders:
                                controller.PrivateChat == true ? true : false,
                            cir: 30,
                            col: controller.PrivateChat == false
                                ? appColor
                                : Colors.transparent,
                            bordercol: gray,
                            child: Textcustam(
                              text: 'Group Chat',
                              weight: FontWeight.w600,
                              col: controller.PrivateChat == false
                                  ? white
                                  : grayCol,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Obx(() => controller.PrivateChat == true
                      ? PrivateChatList()
                      : GroupChatList())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
