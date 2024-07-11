import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/tudoomStoreController/emojController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class EmojisList extends StatelessWidget {
  final controller = Get.put(EmojisController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        CustamContainer(
          wigth: double.infinity,
          hight: 60,
          col: lightgray, //Color(0xffF1F1F1),
          cir: 15,
          child: Textcustam(
            text: 'Emojis are avaliable in your chat ',
            col: grayCol,
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: controller.Emojispic.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                mainAxisExtent: 110),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
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
                      Container(
                        height: 88,
                        width: 117,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage(controller.Emojispic[index]),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 10, bottom: 2, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.download_for_offline_outlined,
                              size: 13,
                            ),
                            Textcustam(
                              text: '20C',
                              weight: FontWeight.w600,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
