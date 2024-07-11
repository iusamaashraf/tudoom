import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/View/MainPages/postdescription.dart';
import 'package:tudoom/Model/tudoomModel.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  List<String> liveRooms = [
    Images.home1,
    Images.home2,
    Images.home3,
    Images.home4,
    Images.home1,
  ];

  addpostSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustamContainer(
                    wigth: 60,
                    hight: 6,
                    cir: 5,
                    col: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);

                    getimage(ImageSource.gallery, context);
                  },
                  child: Textcustam(
                    text: 'Add Post',
                    size: 18,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/Shorts");
                  },
                  child: Textcustam(
                    text: 'Create Short Video',
                    size: 18,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  File? imagess;
  final picker = ImagePicker();

  Future<void> getimage(ImageSource source, BuildContext context) async {
    final pickedFile = await picker.pickImage(
      source: source,
    );

    if (pickedFile != null) {
      imagess = File(pickedFile.path);
      //   Get.snackbar("Ok", "Pick Select");
      Get.to(PostDesciription());
    }
  }

  TextEditingController searchFirend = TextEditingController();
  List<TudoomWorldModel> postTageFirnd = [
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
}
