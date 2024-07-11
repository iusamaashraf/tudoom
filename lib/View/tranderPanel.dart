import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/trandPanelControlle.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class TranderPanel extends StatelessWidget {
  final controller = Get.put(TranderPanelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColor,
        appBar: AppBar(
          backgroundColor: appColor,
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: white,
                  )),
              Textcustam(
                text: 'jerry.cisco ',
                size: 20,
                weight: FontWeight.w600,
                col: white,
              ),
              Icon(
                Icons.more_vert,
                color: white,
              )
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(
                  height: 50,
                ),
                CustamContainer(
                  wigth: double.infinity,
                  hight: 180,
                  cir: 15,
                  col: lightgray,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: 'Badge',
                              size: 16,
                            ),
                            Textcustam(
                              text: 'Headmentor',
                              size: 16,
                              weight: FontWeight.w600,
                              col: appColor,
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
                              text: 'Balance',
                              size: 16,
                            ),
                            Textcustam(
                              text: '3300 \$',
                              size: 16,
                              col: appColor,
                              weight: FontWeight.w600,
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
                              text: 'Monthly tral',
                              size: 16,
                            ),
                            Textcustam(
                              text: '200\$',
                              size: 16,
                              col: appColor,
                              weight: FontWeight.w600,
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
                              text: 'Membership ended on',
                              size: 16,
                            ),
                            Textcustam(
                              text: '24/02/22',
                              size: 16,
                              col: appColor,
                              weight: FontWeight.w600,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textcustam(
                      text: 'People under you',
                      size: 20,
                      weight: FontWeight.w600,
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Stack(
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                // color: Colors.amber,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage(controller.staff[index].pic),
                                ),
                              ),
                              Positioned(
                                bottom: 3,
                                right: 2,
                                child: CustamContainer(
                                  wigth: 10,
                                  hight: 10,
                                  cir: 5,
                                  col: Color(0xff33DD62),
                                ),
                              )
                            ],
                          ),
                          title: Textcustam(
                            text: controller.staff[index].name,
                            size: 16,
                            weight: FontWeight.w600,
                          ),
                          subtitle: Row(
                            children: [
                              SvgPicture.asset(controller.staff[index].country),
                              SizedBox(
                                width: 7,
                              ),
                              Textcustam(
                                text: controller.staff[index].Countryname,
                                col: grayCol,
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: lightgray,
                        )
                      ],
                    );
                  },
                )
              ]),
            ),
          ),
        ));
  }
}
