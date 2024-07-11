import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/tudoomController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class TudoomWorld extends StatelessWidget {
  final controller = Get.put(TudoomWorldController());
  List classopen = [
    "/TransferSCredit",
    "/AddCredits", // AddCredits(),
    "/CreditHistoryScreen",
    "/P2PBuyAndSell",
    "/TudoomStoreGift",
    "/PostAdsScreen",
    "/GameHistory",
    "/MemberShip",
    "/LeaderboardScreen",
    "/DailyTasks",
    "/Reffrals",
  ];
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

              // Fake Ontab check class only
              GestureDetector(
                onTap: () {},
                child: CustamContainer(
                  wigth: double.infinity,
                  hight: 200,
                  bordercol: lightgray,
                  borders: true,
                  cir: 20,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: 'Hello Stoic.sore',
                              weight: FontWeight.w700,
                              col: appColor,
                            ),
                            Textcustam(
                              text: 'LVL 54',
                              weight: FontWeight.w600,
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 160,
                                //color: Colors.amber,
                                child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: grayCol),
                                        children: [
                                      TextSpan(
                                          text: 'Your Membership ends  on '),
                                      TextSpan(
                                          text: '23-02-2022',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500))
                                    ]))),
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
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: appColor,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Textcustam(
                                  text: 'Total Balance',
                                  col: grayCol,
                                  size: 14,
                                  weight: FontWeight.w500,
                                ),
                                Textcustam(
                                  text: '57.475',
                                  size: 48,
                                  weight: FontWeight.w600,
                                  col: appColor,
                                )
                              ],
                            ),
                            // SvgPicture.asset('images/Rectangle 751.svg'),
                            Image.asset(Images.Rectangleprson)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 11,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 15.0,
                    mainAxisExtent: 110),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print('On Tab success ${[index]}');
                      // if (index == 0) {
                      //   Navigator.pushNamed(context, "/TransferSCredit");
                      // } else if (index == 1) {
                      //   Navigator.pushNamed(context, "/AddCredits");
                      // } else if (index == 2) {}

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => classopen[index],
                      //     ));
                      Navigator.pushNamed(
                        context,
                        classopen[index],
                      );
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: lightgray,
                          radius: 23,
                          child: SvgPicture.asset(
                              controller.tudoomitems[index].icon),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${controller.tudoomitems[index].text}',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        )
                      ],
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
