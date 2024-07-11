import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/gamehistoryCon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class GameHistory extends StatelessWidget {
  final controller = Get.put(GameHistoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                        text: 'Game History',
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
              CustamContainer(
                wigth: double.infinity,
                hight: 100,
                col: lightgray,
                cir: 15,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Total Games Playes',
                            col: grayCol,
                          ),
                          Textcustam(
                            text: '435',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Total Wins',
                            col: grayCol,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Textcustam(
                                text: '300',
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Total Loses',
                            col: grayCol,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Textcustam(
                                text: '135',
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: 'Today',
                size: 16,
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 290,
                //  color: Colors.amber,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 8),
                  itemCount: controller.history.length,
                  physics: NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: CustamContainer(
                        wigth: double.infinity,
                        hight: 75,
                        bordercol: lightgray,
                        borders: true,
                        cir: 10,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Textcustam(text: 'Guess the number'),
                                  Textcustam(
                                    text: '+236C',
                                    weight: FontWeight.w600,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          radius: 3,
                                          backgroundColor:
                                              controller.history[index] ==
                                                      'Loose'
                                                  ? Colors.red
                                                  : Colors.green),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Textcustam(
                                          text: controller.history[index],
                                          col: controller.history[index] ==
                                                  'Loose'
                                              ? Colors.red
                                              : Colors.green)
                                    ],
                                  ),
                                  Textcustam(
                                    text: '12:28 pm',
                                    size: 10,
                                    col: grayCol,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Textcustam(
                text: 'Yesterday',
                size: 16,
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                //color: Colors.amber,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 8),
                  itemCount: controller.history.length,
                  physics: NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: CustamContainer(
                        wigth: double.infinity,
                        hight: 75,
                        bordercol: lightgray,
                        borders: true,
                        cir: 10,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Textcustam(text: 'Guess the number'),
                                  Textcustam(
                                    text: '+236C',
                                    weight: FontWeight.w600,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          radius: 3,
                                          backgroundColor:
                                              controller.history[index] ==
                                                      'Loose'
                                                  ? Colors.red
                                                  : Colors.green),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Textcustam(
                                          text: controller.history[index],
                                          col: controller.history[index] ==
                                                  'Loose'
                                              ? Colors.red
                                              : Colors.green)
                                    ],
                                  ),
                                  Textcustam(
                                    text: '12:28 pm',
                                    size: 10,
                                    col: grayCol,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
