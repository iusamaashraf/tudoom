import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/OfficialsControl.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class Officialss extends StatelessWidget {
  final controller = Get.put(OfficialsStaffController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: appColor,
          toolbarHeight: 75,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: white,
                ),
              ),
              Textcustam(
                text: 'Officials',
                size: 20,
                weight: FontWeight.w600,
                col: white,
              ),
              Icon(
                Icons.more_vert,
                color: white,
              ),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: Colors.black,
                        indicatorWeight: 0.1,
                        labelColor: Color(0xff5B428F),
                        tabs: [
                          Tab(text: 'Admin'),
                          Tab(text: 'Hmentor'),
                          Tab(text: ' Staff '),
                        ],
                      ),
                      Container(
                          height: 500, //double.infinity,
                          width: double.infinity,
                          //  color: Colors.amber,
                          child: TabBarView(children: [
                            Container(),
                            Container(),
                            ListView(
                              padding: EdgeInsets.all(0),
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                CustamContainer(
                                  wigth: double.infinity,
                                  hight: 100,
                                  bordercol: lightgray,
                                  borders: true,
                                  cir: 15,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Textcustam(
                                        text:
                                            'Mollis eu, quam tellus eget sit at. Pharetra, sollicitudin sem consequat, id praesent nullam orci.'),
                                  ),
                                ),
                                ListView.builder(
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
                                                  backgroundImage: AssetImage(
                                                      controller
                                                          .staff[index].pic),
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
                                              SvgPicture.asset(controller
                                                  .staff[index].country),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Textcustam(
                                                text: controller
                                                    .staff[index].Countryname,
                                                col: grayCol,
                                              )
                                            ],
                                          ),
                                          trailing:
                                              SvgPicture.asset(Images.Chat),
                                        ),
                                        Divider(
                                          color: lightgray,
                                        )
                                      ],
                                    );
                                  },
                                )
                              ],
                            )
                          ])),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
