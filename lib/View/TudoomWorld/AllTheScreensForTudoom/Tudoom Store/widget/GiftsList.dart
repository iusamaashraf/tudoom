import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/tudoomStoreController/tudoomStoreGiftCon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class GiftsList extends StatelessWidget {
  final controller = Get.put(TudoomStoreController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 18,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          mainAxisExtent: 110),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            controller.sendGift(context);
          },
          child: Container(
            height: 117,
            width: 117,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: lightgray,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 6),
                  child: Textcustam(
                    text: '20C',
                    weight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
