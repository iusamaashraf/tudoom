import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/SallerProfile/sellController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class SellersClass extends StatelessWidget {
  final controller = Get.put(SellController());
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
              text: 'Sellers',
              size: 20,
              weight: FontWeight.w600,
              col: white,
            ),
            SizedBox(
              width: 20,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Textcustam(
                        text: 'Buy ',
                        size: 20,
                        weight: FontWeight.w600,
                        col: grayCol,
                      ),
                      Textcustam(
                        text: '| Sell',
                        size: 20,
                        weight: FontWeight.w600,
                      )
                    ],
                  ),
                  SvgPicture.asset(Images.Filteralt)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 100,
                bordercol: lightgray,
                borders: true,
                cir: 15,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Textcustam(
                      text:
                          'Mollis eu, quam tellus eget sit at. Pharetra, sollicitudin sem consequat, id praesent nullam orci.'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Stack(
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                // color: Colors.amber,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(Images.firend4),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 1,
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.green,
                                ),
                              )
                            ],
                          ),
                          title: Textcustam(
                            text: 'thementalpower',
                            size: 16,
                            weight: FontWeight.w600,
                          ),
                          subtitle: Textcustam(
                            text: '197 Trades | 98.50%',
                            col: grayCol,
                          ),
                          trailing: Container(
                            height: 35,
                            width: 80,
                            child: RoundButton(
                              title: 'Sell',
                              backcol: appColor,
                              fun: () {
                                controller.sowDiloagSheet(context);
                              },
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 60,
                            ),
                            Textcustam(
                              text: '100\$ - 7000 credit',
                              size: 20,
                              weight: FontWeight.w600,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 60,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color(0xffFFB42A),
                                ),
                                Textcustam(
                                  text: '  Gpay',
                                  col: grayCol,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color(0xffF56D58),
                                ),
                                Textcustam(
                                  text: '  IMPS ',
                                  col: grayCol,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Divider(
                          color: lightgray,
                          height: 30,
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
