import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatcontroller.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';
import 'package:tudoom/utils/images.dart';

class ChatRoomSeeAll extends StatelessWidget {
  final controller = Get.put(ChatRoomController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                        text: 'Chatrooms',
                        size: 22,
                        weight: FontWeight.w700,
                      )
                    ],
                  ),
                  SvgPicture.asset(Images.Vector)
                ],
              ),
              Divider(
                color: lightgray,
              ),
              SizedBox(
                height: 10,
              ),
              Textfiledcustam(
                height: 45,
                starticon: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 13, bottom: 13),
                  child: SvgPicture.asset(
                    Images.searchIcon,
                    color: Colors.grey,
                  ),
                ),
                hinttext: 'search chatrooms',
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustamContainer(
                      wigth: double.infinity,
                      hight: 220,
                      cir: 20,
                      bordercol: lightgray,
                      borders: true,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        controller.chatroomseeall[index].image),
                                  ),
                                  title: Text(
                                    controller.chatroomseeall[index].title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
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
                                        text:
                                            controller.chatroomseeall[index].en,
                                        col: controller
                                            .chatroomseeall[index].col,
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
