import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ProfileControllerss/profilecontroler.dart';
import 'package:tudoom/View/Profile/widget/photoPostList.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class ProfileScreen extends StatelessWidget {
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              SizedBox(
                height: 57,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(Images.profile),
                            fit: BoxFit.cover),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Textcustam(
                            text: 'Craig Aminoff  |',
                            size: 18,
                            weight: FontWeight.w600,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 10,
                                color: appColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 10,
                                color: appColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 10,
                                color: appColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 10,
                                color: appColor,
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 180,
                        //   color: Colors.amber,
                        child: Textcustam(
                          text: 'Email - business.craiga@gmail.com',
                          size: 10,
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Textcustam(
                          text: 'Snapchat - craigaminofr29Managed by @craigd',
                          size: 10,
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Textcustam(
                          text: 'youtu.be/zxXTjTp2Rz4.',
                          size: 10,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Divider(
                height: 40,
                color: lightgray,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Textcustam(
                        text: '32',
                        weight: FontWeight.w500,
                        size: 18,
                      ),
                      Textcustam(
                        text: 'Followers',
                        weight: FontWeight.w500,
                        size: 16,
                        col: grayCol,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Textcustam(
                        text: '32',
                        weight: FontWeight.w500,
                        size: 18,
                      ),
                      Textcustam(
                        text: 'Following',
                        weight: FontWeight.w500,
                        size: 16,
                        col: grayCol,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Textcustam(
                        text: '32',
                        weight: FontWeight.w500,
                        size: 18,
                      ),
                      Textcustam(
                        text: 'Footprints',
                        weight: FontWeight.w500,
                        size: 16,
                        col: grayCol,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Textcustam(
                        text: '32',
                        weight: FontWeight.w500,
                        size: 18,
                      ),
                      Textcustam(
                        text: 'Gifts',
                        weight: FontWeight.w500,
                        size: 16,
                        col: grayCol,
                      )
                    ],
                  )
                ],
              ),
              Divider(
                height: 40,
                color: lightgray,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'Achievements',
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  Textcustam(
                    text: 'see all',
                    col: grayCol,
                    weight: FontWeight.w500,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 37,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lightgray),
                    );
                  },
                ),
              ),
              Divider(
                color: lightgray,
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: RoundButton(
                      backcol: appColor,
                      title: 'Edit Profile',
                      fun: () {
                        Navigator.pushNamed(context, "/EditProfile");
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.bottomsheet(context);
                    },
                    child: CustamContainer(
                      hight: 50,
                      wigth: 48,
                      col: appColor,
                      cir: 10,
                      child: SvgPicture.asset(Images.setting),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.indexNo.value = 0;
                      },
                      child: CustamContainer(
                        wigth: 100,
                        hight: 45,
                        borders: controller.indexNo == 0 ? false : true,
                        bordercol: gray,
                        col: controller.indexNo == 0
                            ? appColor
                            : Colors.transparent,
                        cir: 30,
                        child: Textcustam(
                            text: 'Photos',
                            weight: FontWeight.w600,
                            col: controller.indexNo == 0 ? white : grayCol),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.indexNo.value = 1;
                      },
                      child: CustamContainer(
                        wigth: 100,
                        hight: 45,
                        borders: controller.indexNo == 1 ? false : true,
                        cir: 30,
                        col: controller.indexNo == 1
                            ? appColor
                            : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Videos',
                          weight: FontWeight.w600,
                          col: controller.indexNo == 1 ? white : grayCol,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.indexNo.value = 2;
                      },
                      child: CustamContainer(
                        wigth: 100,
                        hight: 45,
                        borders: controller.indexNo == 2 ? false : true,
                        cir: 30,
                        col: controller.indexNo == 2
                            ? appColor
                            : Colors.transparent,
                        bordercol: gray,
                        child: Textcustam(
                          text: 'Avatars',
                          weight: FontWeight.w600,
                          col: controller.indexNo == 2 ? white : grayCol,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Obx(() => controller.indexNo == 0 ? PhotosPostList() : SizedBox())

//  Post
            ],
          ),
        ),
      ),
    );
  }
}
