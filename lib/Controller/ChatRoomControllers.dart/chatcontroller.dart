import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tudoom/Model/tudoomModel.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class ChatRoomController extends GetxController {
  RxBool Chatrooms = true.obs;
  TextEditingController searchController = TextEditingController();

  RxBool PrivateChat = true.obs;

  List Categories = [
    'Games',
    'Country',
    'Music',
    'Poltics',
    'Buisness',
    'Travel',
    'Health',
    'Education',
    'Food',
    'Entertainment'
  ];
  List<TudoomWorldModel> yourRoomslist = [
    TudoomWorldModel(icon: Images.room1, text: 'Party Poppins'),
    TudoomWorldModel(icon: Images.room2, text: 'Party Poppins'),
    TudoomWorldModel(icon: Images.room3, text: 'Party Poppins'),
    TudoomWorldModel(icon: Images.room4, text: 'Party Poppins')
  ];
  List<TudoomWorldModel> recentRoomslist = [
    TudoomWorldModel(icon: Images.room4, text: 'Party Poppins'),
    TudoomWorldModel(icon: Images.room3, text: 'Party Poppins'),
    TudoomWorldModel(icon: Images.room2, text: 'Party Poppins'),
    TudoomWorldModel(icon: Images.room1, text: 'Party Poppins')
  ];
  List<TudoomWorldModel> PrivateChatPerson = [
    TudoomWorldModel(icon: Images.post, text: 'Kierra Vetrovs'),
    TudoomWorldModel(icon: Images.chat3, text: 'Kianna Aminoff'),
    TudoomWorldModel(icon: Images.chat2, text: 'Abram Stanton'),
    TudoomWorldModel(icon: Images.chat5, text: 'Jordyn Dorwart'),
    TudoomWorldModel(icon: Images.cjhat4, text: 'Kierra Vetrovs')
  ];

  List<TudoomWorldModel> chatperson = [
    TudoomWorldModel(
      icon: Images.post,
      text: 'Alfonso...',
    ),
    TudoomWorldModel(
      icon: Images.chat5,
      text: 'Zain Dias',
    ),
    TudoomWorldModel(
      icon: Images.chat2,
      text: 'Kaiya A...',
    ),
    TudoomWorldModel(
      icon: Images.chat3,
      text: 'Cristofer...',
    ),
    TudoomWorldModel(
      icon: Images.cjhat4,
      text: 'Carter...',
    ),
    TudoomWorldModel(
      icon: Images.chat5,
      text: 'Aspen S...',
    )
  ];

  List<Chatroomsee> chatroomseeall = [
    Chatroomsee(
        col: Color(0xff4AAAC9),
        en: 'GAMES',
        image: Images.local,
        title: 'Party Poppins'),
    Chatroomsee(
        col: Color(0xff9C609D),
        en: 'Ent..',
        image: Images.aa,
        title: 'The Hangout Lounge'),
    Chatroomsee(
        col: Color(0xffD69A00),
        en: 'EDU..',
        image: Images.local,
        title: 'Entertainment Central')
  ];

// Create ChatRoom

  roomcreate(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                CustamContainer(
                  wigth: 80,
                  hight: 5,
                  col: Colors.black,
                  cir: 4,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/CreateRoom");
                    },
                    child: Textcustam(
                      text: 'Create Chatroom',
                      size: 18,
                      weight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        );
      },
    );
  }

//   Invite People   Room

  List<TudoomWorldModel> invitePeople = [
    TudoomWorldModel(icon: Images.post, text: 'Adison Passaquindici Arcand'),
    TudoomWorldModel(icon: Images.firend1, text: 'Marcus Levin'),
    TudoomWorldModel(icon: Images.firend2, text: 'Cooper Franci'),
    TudoomWorldModel(icon: Images.firend3, text: 'Lincoln Philips'),
    TudoomWorldModel(icon: Images.firend4, text: 'Wilson Schleifer'),
    TudoomWorldModel(icon: Images.firend5, text: 'Jakob Siphron'),
    TudoomWorldModel(icon: Images.post, text: 'Emery Dias'),
    TudoomWorldModel(icon: Images.firend1, text: 'Kaiya Curtis'),
    TudoomWorldModel(icon: Images.firend2, text: 'Nolan Dorwart')
  ];

  File? imagess;
  final picker = ImagePicker();

  Future<void> getimage(ImageSource source, BuildContext context) async {
    final pickedFile = await picker.pickImage(
      source: source,
    );

    if (pickedFile != null) {
      imagess = File(pickedFile.path);
      //   Get.snackbar("Ok", "Pick Select");
    }
  }
}
