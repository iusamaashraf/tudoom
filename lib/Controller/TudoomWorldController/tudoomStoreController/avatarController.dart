import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class AvatarsController extends GetxController {
  RxInt AvatarFilter = 0.obs;
  createAvatar(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            CustamContainer(
              wigth: 95,
              hight: 6,
              cir: 5,
              col: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 95,
              width: 95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: lightgray),
            ),
            SizedBox(
              height: 10,
            ),
            Textcustam(
              text: 'Avatar name',
              weight: FontWeight.w600,
              size: 16,
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        AvatarFilter.value = 0;
                      },
                      child: CustamContainer(
                        wigth: 80,
                        hight: 45,
                        borders: AvatarFilter == 0 ? false : true,
                        bordercol: gray,
                        col: AvatarFilter == 0 ? appColor : Colors.transparent,
                        cir: 30,
                        child: Textcustam(
                            text: 'Dress',
                            weight: FontWeight.w600,
                            col: AvatarFilter == 0 ? white : grayCol),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        AvatarFilter.value = 1;
                      },
                      child: CustamContainer(
                        wigth: 80,
                        hight: 45,
                        borders: AvatarFilter == 1 ? false : true,
                        cir: 30,
                        col: AvatarFilter == 1 ? appColor : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Faces',
                          weight: FontWeight.w600,
                          col: AvatarFilter == 1 ? white : grayCol,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        AvatarFilter.value = 2;
                      },
                      child: CustamContainer(
                        wigth: 80,
                        hight: 45,
                        borders: AvatarFilter == 2 ? false : true,
                        cir: 30,
                        col: AvatarFilter == 2 ? appColor : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Hairs',
                          weight: FontWeight.w600,
                          col: AvatarFilter == 2 ? white : grayCol,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        AvatarFilter.value = 3;
                      },
                      child: CustamContainer(
                        wigth: 80,
                        hight: 45,
                        borders: AvatarFilter == 3 ? false : true,
                        cir: 30,
                        col: AvatarFilter == 3 ? appColor : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Shoes',
                          weight: FontWeight.w600,
                          col: AvatarFilter == 3 ? white : grayCol,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                itemCount: 15,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightgray),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: RoundButton(
                backcol: appColor,
                title: 'Set to your profile',
                fun: () {},
              ),
            )
          ],
        );
      },
    );
  }
}
