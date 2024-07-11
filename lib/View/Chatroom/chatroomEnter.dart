import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatroomEnterController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class ChatroomEnter extends StatelessWidget {
  final controller = Get.put(ChatRoomEnterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
        backgroundColor: appColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: white,
                )),
            Textcustam(
              text: 'jerry.cisco ',
              size: 20,
              weight: FontWeight.w600,
              col: white,
            ),
            Icon(
              Icons.more_vert,
              color: white,
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 96,
                bordercol: grayCol,
                borders: true,
                cir: 20,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(Images.Danger),
                      Container(
                        width: Get.width * 0.650,
                        //color: Colors.amber,
                        child: Textcustam(
                          text:
                              'Please refrain yourself from using abusive words poking or provoking other users global admin you do anything inappropirate.',
                          size: 11,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.enterroom.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: CustamContainer(
                        wigth: double.infinity,
                        col: lightgray,
                        cir: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Textcustam(
                                text: controller.enterroom[index].name,
                                size: 16,
                                weight: FontWeight.w600,
                                col: appColor,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 200,
                                //   color: Colors.amber,
                                child: Textcustam(
                                    text: controller.enterroom[index].message),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustamContainer(
                    wigth: Get.width * 0.710,
                    hight: 48,
                    col: lightgray,
                    cir: 22,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          SvgPicture.asset(Images.emoje),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type a message'),
                            ),
                          ),
                          Icon(Icons.add_circle_outline_sharp)
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: lightgray,
                    child: SvgPicture.asset(Images.Sendto),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
