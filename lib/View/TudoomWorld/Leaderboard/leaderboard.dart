import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/LeaderboardController/leaderboardController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class LeaderboardScreen extends StatelessWidget {
  final controller = Get.put(LeaderboardControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 57,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_new)),
                      SizedBox(
                        width: 10,
                      ),
                      Textcustam(
                        text: 'Leaderboard',
                        size: 22,
                        weight: FontWeight.w700,
                      )
                    ],
                  ),
                  SvgPicture.asset(Images.notilines)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: lightgray,
              ),
              SizedBox(
                height: 10,
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
                          controller.report.value = 0;
                        },
                        child: CustamContainer(
                          wigth: 84,
                          hight: 45,
                          borders: controller.report == 0 ? false : true,
                          bordercol: gray,
                          col: controller.report == 0
                              ? appColor
                              : Colors.transparent,
                          cir: 30,
                          child: Textcustam(
                              text: 'Daily',
                              weight: FontWeight.w600,
                              col: controller.report == 0 ? white : gray),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.report.value = 1;
                        },
                        child: CustamContainer(
                          wigth: 100,
                          hight: 45,
                          borders: controller.report == 1 ? false : true,
                          cir: 30,
                          col: controller.report == 1
                              ? appColor
                              : Colors.transparent,
                          bordercol: gray,
                          child: Textcustam(
                            text: 'Weekly',
                            weight: FontWeight.w600,
                            col: controller.report == 1 ? white : gray,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.report.value = 2;
                        },
                        child: CustamContainer(
                          wigth: 95,
                          hight: 45,
                          borders: controller.report == 2 ? false : true,
                          cir: 30,
                          col: controller.report == 2
                              ? appColor
                              : Colors.transparent,
                          bordercol: gray,
                          child: Textcustam(
                            text: 'Monthly',
                            weight: FontWeight.w600,
                            col: controller.report == 2 ? white : gray,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.report.value = 3;
                        },
                        child: CustamContainer(
                          wigth: 95,
                          hight: 45,
                          borders: controller.report == 3 ? false : true,
                          cir: 30,
                          col: controller.report == 3
                              ? appColor
                              : Colors.transparent,
                          bordercol: gray,
                          child: Textcustam(
                            text: 'Yearly',
                            weight: FontWeight.w600,
                            col: controller.report == 3 ? white : gray,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

//  Daily

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Images.three),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            // color: Colors.amber,
                          ),
                          SvgPicture.asset(
                            Images.boldcircular, //circular,
                            height: 80,
                            width: 80,
                          ),
                          Positioned(
                            left: 3,
                            right: 3,
                            bottom: 3,
                            top: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundImage: AssetImage(Images.Participant),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 80,
                        child: Text(
                          'Hanna Boto...',
                          style: TextStyle(color: grayCol),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustamContainer(
                        wigth: 72,
                        hight: 27,
                        borders: true,
                        bordercol: grayCol,
                        cir: 7,
                        child: Textcustam(text: '500'),
                      )
                    ],
                  ),

                  //  1st

                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Images.one),
                        SizedBox(
                          height: 10,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              // color: Colors.amber,
                            ),
                            SvgPicture.asset(
                              Images.circular,
                              height: 150,
                              width: 150,
                            ),
                            Positioned(
                              left: 3,
                              right: 3,
                              bottom: 3,
                              top: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundImage: AssetImage(Images.patispat),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          width: 100,
                          child: Text(
                            'Marcus Work...',
                            style: TextStyle(color: grayCol),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustamContainer(
                          wigth: 72,
                          hight: 27,
                          borders: true,
                          bordercol: grayCol,
                          cir: 7,
                          child: Textcustam(text: '100000'),
                        )
                      ],
                    ),
                  ),

                  //  2nd

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Images.two),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            // color: Colors.amber,
                          ),
                          SvgPicture.asset(
                            Images.boldcircular, //circular,
                            height: 80,
                            width: 80,
                          ),
                          Positioned(
                            left: 3,
                            right: 3,
                            bottom: 3,
                            top: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundImage:
                                    AssetImage(Images.Participant1),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 80,
                        child: Text(
                          'Charlie Cu...',
                          style: TextStyle(color: grayCol),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustamContainer(
                        wigth: 72,
                        hight: 27,
                        borders: true,
                        bordercol: grayCol,
                        cir: 7,
                        child: Textcustam(text: '1000'),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'All Participant',
                    size: 18,
                    weight: FontWeight.w500,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/ParticipantSeeAll");
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: grayCol),
                    ),
                  )
                ],
              ),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.participant.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: CustamContainer(
                      wigth: double.infinity,
                      hight: 80,
                      borders: true,
                      cir: 17,
                      bordercol: lightgray,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              SvgPicture.asset(Images.containergr),
                              Positioned(
                                left: 15,
                                top: 25,
                                child: Textcustam(
                                  text: '${index + 1}',
                                  size: 18,
                                  weight: FontWeight.w500,
                                  col: white,
                                ),
                              )
                            ],
                          ),
                          Expanded(
                              child: ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                  controller.participant[index].pick),
                              radius: 24,
                            ),
                            title: Row(
                              //    crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Textcustam(
                                  text: controller.participant[index].title,
                                  size: 16,
                                  weight: FontWeight.w500,
                                ),
                                Textcustam(
                                  text: controller.participant[index].trilng,
                                  size: 16,
                                  weight: FontWeight.w500,
                                ),
                              ],
                            ),
                            subtitle: Textcustam(
                              text: controller.participant[index].subtitle,
                              size: 12,
                              weight: FontWeight.w500,
                              col: grayCol,
                            ),
                          )),

                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Padding(
                          //       padding: const EdgeInsets.only(left: 10),
                          //       child: CircleAvatar(
                          //         backgroundImage: AssetImage(
                          //             controller.participant[index].pick),
                          //         radius: 24,
                          //       ),
                          //     ),
                          //     Padding(
                          //       padding:
                          //           const EdgeInsets.only(left: 10, bottom: 10),
                          //       child: Column(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Textcustam(
                          //             text: controller.participant[index].title,
                          //             size: 16,
                          //             weight: FontWeight.w500,
                          //           ),
                          //           Textcustam(
                          //             text: controller
                          //                 .participant[index].subtitle,
                          //             size: 12,
                          //             weight: FontWeight.w500,
                          //             col: grayCol,
                          //           )
                          //         ],
                          //       ),
                          //     ),
                          //   ],
                          // ),
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
