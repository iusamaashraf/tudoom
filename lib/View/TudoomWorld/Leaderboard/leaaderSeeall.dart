import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/LeaderboardController/leaderboardController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class ParticipantSeeAll extends StatelessWidget {
  final controller = Get.put(LeaderboardControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Textcustam(
              text: 'All Participant',
              size: 18,
              weight: FontWeight.w500,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.participant.length,
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
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
