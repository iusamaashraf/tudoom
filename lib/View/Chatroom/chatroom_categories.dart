import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatcontroller.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class ChatRoomCategories extends StatelessWidget {
  final controller = Get.put(ChatRoomController());
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new)),
                SizedBox(
                  width: 8,
                ),
                Textcustam(
                  text: 'Categories',
                  size: 22,
                  weight: FontWeight.w700,
                )
              ],
            ),
            Divider(
              color: lightgray,
            ),
            SizedBox(
              height: 10,
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
            )
          ],
        ),
      ),
    );
  }
}
