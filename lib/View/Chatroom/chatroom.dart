import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatcontroller.dart';
import 'package:tudoom/View/Chatroom/message.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class ChatRoomScreen extends StatelessWidget {
  final controller = Get.put(ChatRoomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          onPressed: () {
            if (controller.Chatrooms == true) {
              controller.Chatrooms.value = false;
            } else {
              controller.Chatrooms.value = true;
            }
          },
          backgroundColor: appColor,
          child: Obx(
            () => Icon(
              controller.Chatrooms == true
                  ? Icons.arrow_forward
                  : Icons.arrow_back,
              color: white,
            ),
          ),
        ),
        body: Obx(() => controller.Chatrooms == true
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 57,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: 'Chatrooms',
                              size: 22,
                              weight: FontWeight.w700,
                            ),

                            //  Create Chat Room
                            GestureDetector(
                              onTap: () {
                                controller.roomcreate(context);
                              },
                              child: Icon(
                                Icons.add_circle_outline,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: lightgray,
                        height: 30,
                        endIndent: 20,
                      ),
                      Container(
                        height: 80,
                        //color: Colors.amber,
                        child: ListView.builder(
                          itemCount: controller.chatperson.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 26,
                                    backgroundImage: AssetImage(
                                        controller.chatperson[index].icon),
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
                      Divider(
                        color: lightgray,
                        height: 20,
                        endIndent: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: 'Categories',
                              size: 18,
                              weight: FontWeight.w700,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/ChatRoomCategories");
                              },
                              child: Textcustam(
                                text: 'see all',
                                col: grayCol,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 45,
                        // color: Colors.amber,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CustamContainer(
                                wigth: 120,
                                hight: 48,
                                cir: 20,
                                borders: true,
                                bordercol: grayCol,
                                child: Textcustam(
                                  text: controller.Categories[index],
                                  weight: FontWeight.w600,
                                  col: grayCol,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: 'Your Rooms',
                              size: 18,
                              weight: FontWeight.w700,
                            ),
                            Textcustam(
                              text: 'see all',
                              col: grayCol,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 115,
                        // color: Colors.amber,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.yourRoomslist.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CustamContainer(
                                  wigth: 120,
                                  hight: 115,
                                  cir: 20,
                                  borders: true,
                                  bordercol: lightgray,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 7,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(controller
                                            .yourRoomslist[index].icon),
                                      ),
                                      Textcustam(
                                        text: controller
                                            .yourRoomslist[index].text,
                                        weight: FontWeight.w600,
                                      ),
                                      Divider(
                                        color: lightgray,
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset(Images.person),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Textcustam(
                                                text: '32',
                                                size: 12,
                                                col: grayCol,
                                                weight: FontWeight.w500,
                                              )
                                            ],
                                          ),
                                          Textcustam(
                                            text: '1m ago',
                                            size: 12,
                                            col: grayCol,
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: 'Recent Rooms',
                              size: 18,
                              weight: FontWeight.w700,
                            ),
                            Textcustam(
                              text: 'see all',
                              col: grayCol,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                        height: 115,
                        // color: Colors.amber,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.recentRoomslist.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CustamContainer(
                                  wigth: 120,
                                  hight: 115,
                                  cir: 20,
                                  borders: true,
                                  bordercol: lightgray,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 7,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(controller
                                            .recentRoomslist[index].icon),
                                      ),
                                      Textcustam(
                                        text: controller
                                            .recentRoomslist[index].text,
                                        weight: FontWeight.w600,
                                      ),
                                      Divider(
                                        color: lightgray,
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset(Images.person),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Textcustam(
                                                text: '32',
                                                size: 12,
                                                col: grayCol,
                                                weight: FontWeight.w500,
                                              )
                                            ],
                                          ),
                                          Textcustam(
                                            text: '1m ago',
                                            size: 12,
                                            col: grayCol,
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: 'All chatrooms',
                              size: 18,
                              weight: FontWeight.w700,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/ChatRoomSeeAll");
                              },
                              child: Textcustam(
                                text: 'see all',
                                col: grayCol,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: CustamContainer(
                          wigth: double.infinity,
                          hight: 220,
                          cir: 20,
                          bordercol: lightgray,
                          borders: true,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      leading: CircleAvatar(
                                        backgroundImage:
                                            AssetImage(Images.local),
                                      ),
                                      title: Textcustam(text: 'Party Poppins'),
                                      subtitle: Text(
                                        'Celebrating party for all',
                                        style: TextStyle(color: grayCol),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      trailing: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Textcustam(
                                            text: 'GAMES',
                                            col: Color(0xff4AAAC9),
                                          ),
                                          Textcustam(
                                            text: ' | EN',
                                            col: Color(0xff3C3C3C),
                                          )
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: lightgray,
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Textcustam(
                                              text: 'Total Capacity',
                                              weight: FontWeight.w500,
                                            ),
                                            Textcustam(
                                              text: '320 Members',
                                              weight: FontWeight.w600,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 100,
                                          height: 45,
                                          child: RoundButton(
                                            backcol: appColor,
                                            title: 'Join',
                                            fun: () {},
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Divider(
                                color: lightgray,
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(Images.person),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Textcustam(
                                        text: '32 Members ',
                                        col: darkblack,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: grayCol,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Textcustam(
                                        text: 'Active 1 min Ago',
                                        col: darkblack,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.07,
                      )
                    ],
                  ),
                ),
              )
            : MessageChatRoom()));
  }
}
