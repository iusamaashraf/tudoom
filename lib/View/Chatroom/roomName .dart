import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatcontroller.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';

class RoomNameTopicScreen extends StatelessWidget {
  final controller = Get.put(ChatRoomController());

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
              Textcustam(
                text: 'Create Room',
                size: 22,
                weight: FontWeight.w700,
              ),
              Divider(
                color: lightgray,
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: 'Room Name &Topic',
                size: 18,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 5,
              ),
              Textcustam(
                text:
                    'Let People Know what your community is about.No pressure, you can change these later',
                size: 13,
                col: grayCol,
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  controller.getimage(ImageSource.gallery, context);
                },
                child: CustamContainer(
                  wigth: 113,
                  hight: 113,
                  col: lightgray,
                  cir: 15,
                  child: Icon(
                    Icons.add,
                    size: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: ' Name',
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 5,
              ),
              Textfiledcustam(
                height: 48,
                hinttext: '@example',
              ),
              SizedBox(
                height: 15,
              ),
              Textcustam(
                text: ' Headline for your room',
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 5,
              ),
              Textfiledcustam(
                height: 48,
                hinttext: '',
              ),
              SizedBox(
                height: 15,
              ),
              Textcustam(
                text: 'Select Category',
                size: 18,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                padding: EdgeInsets.all(0),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.Categories.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of items in a row
                    mainAxisSpacing: 10.0, // Spacing along the main axis
                    crossAxisSpacing: 5.0, // Spacing along the cross axis
                    mainAxisExtent: 47),
                itemBuilder: (context, index) {
                  return CustamContainer(
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
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              RoundButton(
                backcol: appColor,
                title: 'Continue',
                fun: () {
                  Navigator.pushNamed(context, "/InvitePeople");
                },
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
