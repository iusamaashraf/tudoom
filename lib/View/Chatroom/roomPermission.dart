import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/createRommController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class RoomPermissionScreen extends StatelessWidget {
  final controller = Get.put(CreateRoomController());
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.pop(context);
                  //   },
                  //   child: Icon(Icons.arrow_back_ios_new),
                  // ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Textcustam(
                    text: 'Create Room',
                    size: 22,
                    weight: FontWeight.w700,
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
              Textcustam(
                text: 'Room Permissions',
                size: 18,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 10,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 80,
                col: lightgray,
                cir: 13,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 20),
                  title: Textcustam(
                    text: 'Room Moderation',
                    weight: FontWeight.w500,
                  ),
                  subtitle: Textcustam(
                    text:
                        'Determine who can see the room in search, discover, user profiles, etc.',
                    col: grayCol,
                    size: 13,
                  ),
                  // trailing:
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Textcustam(
                text: 'Content Controls',
                size: 18,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 80,
                col: lightgray,
                cir: 13,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 20),
                  title: Textcustam(
                    text: 'Broadcast Camers/Mic',
                    weight: FontWeight.w500,
                  ),
                  subtitle: Text(
                    maxLines: 2,
                    'Who can go on stage and turn on their camera/mic in this room',
                    style: TextStyle(fontSize: 13, color: grayCol),
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: PopupMenuButton<String>(
                    onSelected: (String value) {
                      // Update the value based on the selected option
                      switch (value) {
                        case 'Everyone':
                          controller.broadcastCamers.value = 'Everyone';
                          break;
                        case 'Only Me':
                          controller.broadcastCamers.value = 'Only Me';
                          break;
                        case 'Friends':
                          controller.broadcastCamers.value = 'Friends';
                          break;
                        default:
                          break;
                      }
                    },
                    child: Obx(() => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Textcustam(
                                text: controller.broadcastCamers.value,
                                size: 13,
                                weight: FontWeight.w600,
                                col: appColor, // Adjust color as needed
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: appColor,
                              )
                            ],
                          ),
                        )),
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'Everyone',
                        child: Text('Everyone'),
                      ),
                      PopupMenuItem<String>(
                        value: 'Only Me',
                        child: Text('Only Me'),
                      ),
                      PopupMenuItem<String>(
                        value: 'Friends',
                        child: Text('Friends'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 80,
                col: lightgray,
                cir: 13,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 20),
                  title: Textcustam(
                    text: 'Post Media',
                    weight: FontWeight.w500,
                  ),
                  subtitle: Textcustam(
                    text: 'Control who can post on media & links in chat.',
                    col: grayCol,
                    size: 13,
                  ),
                  trailing: PopupMenuButton<String>(
                    onSelected: (String value) {
                      // Update the value based on the selected option
                      switch (value) {
                        case 'Everyone':
                          controller.postMedia.value = 'Everyone';
                          break;
                        case 'Only Me':
                          controller.postMedia.value = 'Only Me';
                          break;
                        case 'Friends':
                          controller.postMedia.value = 'Friends';
                          break;
                        default:
                          break;
                      }
                    },
                    child: Obx(() => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Textcustam(
                                text: controller.postMedia.value,
                                size: 13,
                                weight: FontWeight.w600,
                                col: appColor, // Adjust color as needed
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: appColor,
                              )
                            ],
                          ),
                        )),
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'Everyone',
                        child: Text('Everyone'),
                      ),
                      PopupMenuItem<String>(
                        value: 'Only Me',
                        child: Text('Only Me'),
                      ),
                      PopupMenuItem<String>(
                        value: 'Friends',
                        child: Text('Friends'),
                      ),
                    ],
                  ),
                ),
              ),

              //   #rd Send Message

              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 80,
                col: lightgray,
                cir: 13,
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 20),
                  title: Textcustam(
                    text: 'Send Messages',
                    weight: FontWeight.w500,
                  ),
                  subtitle: Textcustam(
                    text: 'Control who can send message in this room',
                    col: grayCol,
                    size: 13,
                  ),
                  trailing: PopupMenuButton<String>(
                    onSelected: (String value) {
                      // Update the value based on the selected option
                      switch (value) {
                        case 'Everyone':
                          controller.sendMessages.value = 'Everyone';
                          break;
                        case 'Only Me':
                          controller.sendMessages.value = 'Only Me';
                          break;
                        case 'Friends':
                          controller.sendMessages.value = 'Friends';
                          break;
                        default:
                          break;
                      }
                    },
                    child: Obx(() => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Textcustam(
                                text: controller.sendMessages.value,
                                size: 13,
                                weight: FontWeight.w600,
                                col: appColor, // Adjust color as needed
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: appColor,
                              )
                            ],
                          ),
                        )),
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'Everyone',
                        child: Text('Everyone'),
                      ),
                      PopupMenuItem<String>(
                        value: 'Only Me',
                        child: Text('Only Me'),
                      ),
                      PopupMenuItem<String>(
                        value: 'Friends',
                        child: Text('Friends'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: RoundButton(
          title: 'Continue',
          backcol: appColor,
          fun: () {
            Navigator.pushNamed(context, "/RoomNameTopicScreen");
          },
        ),
      ),
    );
  }
}
