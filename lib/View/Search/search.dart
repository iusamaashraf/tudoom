import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/SearchController/searchcontroller.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';
import 'package:tudoom/utils/images.dart';

class Search extends StatelessWidget {
  final controller = Get.put(SearchControllerget());
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
            Textfiledcustam(
              height: 45,
              starticon: Padding(
                padding: const EdgeInsets.only(left: 5, top: 13, bottom: 13),
                child: SvgPicture.asset(
                  Images.searchIcon,
                  color: Colors.grey,
                ),
              ),
              hinttext: 'search chatrooms, usernames',
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Obx(
              () => Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.searchtype.value = true;
                    },
                    child: CustamContainer(
                      wigth: 120,
                      hight: 48,
                      borders: controller.searchtype == false ? true : false,
                      bordercol: gray,
                      col: controller.searchtype == true
                          ? appColor
                          : Colors.transparent,
                      cir: 30,
                      child: Textcustam(
                          text: 'Profiles',
                          weight: FontWeight.w600,
                          col: controller.searchtype == true ? white : gray),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.searchtype.value = false;
                    },
                    child: CustamContainer(
                      wigth: 120,
                      hight: 48,
                      borders: controller.searchtype == true ? true : false,
                      cir: 30,
                      col: controller.searchtype == false
                          ? appColor
                          : Colors.transparent,
                      bordercol: gray,
                      child: Textcustam(
                        text: 'Chatrooms',
                        weight: FontWeight.w600,
                        col: controller.searchtype == false ? white : gray,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
