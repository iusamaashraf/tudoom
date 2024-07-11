import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:tudoom/Controller/homeController/homecontroller.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              SizedBox(
                height: 57,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context,
                            "/TudoomWorldAnything"); //"/SellersClass");
                      },
                      child: CustamContainer(
                        wigth: 40,
                        hight: 40,
                        col: lightgray, //Colors.grey.shade300,
                        child: Textcustam(
                          text: 'T',
                          size: 24,
                          weight: FontWeight.w600,
                        ),
                        cir: 10,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/Notifications");
                          },
                          child: CustamContainer(
                            wigth: 40,
                            hight: 40,
                            borders: true,
                            bordercol: lightgray,
                            child: SvgPicture.asset(Images.notification),
                            cir: 10,
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/ReelsScreens");
                          },
                          child: CustamContainer(
                            wigth: 40,
                            hight: 40,
                            borders: true,
                            bordercol: lightgray,
                            child: SvgPicture.asset(Images.reelicon),
                            cir: 10,
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.addpostSheet(context);
                          },
                          child: CustamContainer(
                            wigth: 40,
                            hight: 40,
                            borders: true,
                            bordercol: lightgray,
                            child: Textcustam(
                              text: '+',
                              size: 25,
                              weight: FontWeight.w400,
                            ),
                            cir: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: lightgray,
                height: 30,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textcustam(
                      text: 'Live Rooms',
                      size: 18,
                      weight: FontWeight.w600,
                      col: darkblack,
                    ),
                    Textcustam(
                      text: 'see all',
                      size: 18,
                      weight: FontWeight.w500,
                      col: Colors.grey,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 66,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.liveRooms.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(controller.liveRooms[index]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                        color: lightgray,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 45,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CustamContainer(
                          wigth: 283,
                          cir: 15,
                          hight: 43,
                          col: Color(0xff7D5BC7),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Textcustam(
                                text: '@hex is top on the leaderboard',
                                weight: FontWeight.w500,
                                col: white,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 81,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CustamContainer(
                          wigth: 133,
                          cir: 15,
                          hight: 81,
                          bordercol: lightgray,
                          borders: true,
                          child: Image.asset(Images.hometext),
                        ),
                      );
                    },
                  )),
              ListView.builder(
                padding: EdgeInsets.only(top: 20, right: 20),
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: CustamContainer(
                      wigth: double.infinity,
                      borders: true,
                      bordercol: lightgray,
                      cir: 15,
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding:
                                EdgeInsets.only(top: 5, left: 8, right: 30),
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                Images.home3,
                              ),
                            ),
                            title: Textcustam(
                              text: 'The Rock',
                              weight: FontWeight.w600,
                            ),
                            subtitle: Text(
                              'Vishal and Sheykhar, Shilpa Rao...',
                              style: TextStyle(color: gray),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Image.asset(Images.post),
                          // Container(
                          //   height: 400,
                          //   width: double.infinity,
                          //   decoration: BoxDecoration(
                          //       color: Colors.amber,
                          //       image: DecorationImage(
                          //           image: AssetImage(Images.post))),
                          // )

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ReadMoreText(
                              'instagram A turntable fashion labmembers Flutter is Google’s mobile UI open source framework to build',
                              trimLines: 2,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'read more',
                              trimExpandedText: 'read less',
                              moreStyle: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Divider(
                            color: lightgray,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 5,
                              bottom: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustamContainer(
                                  wigth: 40,
                                  hight: 40,
                                  borders: true,
                                  bordercol: lightgray,
                                  child: SvgPicture.asset(Images.like),
                                  cir: 10,
                                ),
                                Row(
                                  children: [
                                    CustamContainer(
                                      wigth: 40,
                                      hight: 40,
                                      borders: true,
                                      bordercol: lightgray,
                                      child: SvgPicture.asset(Images.coment),
                                      cir: 10,
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                    CustamContainer(
                                      wigth: 40,
                                      hight: 40,
                                      borders: true,
                                      bordercol: lightgray,
                                      child: SvgPicture.asset(Images.share),
                                      cir: 10,
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                    CustamContainer(
                                      wigth: 40,
                                      hight: 40,
                                      borders: true,
                                      bordercol: lightgray,
                                      child: SvgPicture.asset(Images.threedot),
                                      cir: 10,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
