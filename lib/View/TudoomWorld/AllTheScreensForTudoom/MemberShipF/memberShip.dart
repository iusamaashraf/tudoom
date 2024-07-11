import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/membershipcontro.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class MemberShip extends StatelessWidget {
  final controller = Get.put(MemberShipController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 57,
            ),
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
                  text: 'Membership  ',
                  size: 22,
                  weight: FontWeight.w700,
                )
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
              hight: 87,
              cir: 10,
              col: lightgray,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Textcustam(
                      text:
                          'Learn about all the membersips their perks and how they work',
                      col: grayCol,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Textcustam(
                      text: 'Know more',
                      weight: FontWeight.w500,
                      //size: 16,
                      col: appColor,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                padding: EdgeInsets.only(top: 20),
                itemBuilder: (context, index) {
                  final statcol = controller.membershipcon[index].col;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Stack(
                      children: [
                        Container(
                          height: 310,
                          //  color: Colors.red,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 37,
                            ),
                            CustamContainer(
                              wigth: double.infinity,
                              hight: 260,
                              borders: true,
                              bordercol: lightgray,
                              cir: 10,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Textcustam(
                                          text: controller
                                              .membershipcon[index].messing,
                                          size: 16,
                                          weight: FontWeight.w600,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: statcol,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: statcol,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: statcol,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: statcol,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: statcol,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: lightgray,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 5,
                                        top: 20,
                                        bottom: 20),
                                    child: Textcustam(
                                        text:
                                            '1. Exclusive access to events\n2. Discounts on products and services\n3. Free or discounted classes and workshops\n4. Access to exclusive content'),
                                  ),
                                  Divider(
                                    color: lightgray,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Textcustam(
                                              text: 'Price',
                                              // size: 10,
                                              col: grayCol,
                                            ),
                                            Textcustam(
                                              text: '\$20',
                                              size: 30,
                                              weight: FontWeight.w700,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 60,
                                          child: VerticalDivider(
                                            color: lightgray,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 140,
                                          child: RoundButton(
                                            title: 'Buy Now',
                                            backcol: appColor,
                                            fun: () {
                                              Navigator.pushNamed(context,
                                                  "/MemberShipPaymentMethod");
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                            top: 0,
                            left: 130,
                            child: Image.asset(
                                controller.membershipcon[index].type))
                      ],
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
//5B93C7
//CE976F;
