import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class WaitingbuyersPayment extends StatelessWidget {
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
              text: 'Waiting ',
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Textcustam(
                  text: 'Waiting for  buyers Payment',
                  size: 20,
                  weight: FontWeight.w600,
                  col: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Textcustam(
                  text: 'If you have transferred contact the seller',
                  weight: FontWeight.w500,
                  col: grayCol,
                ),
                SizedBox(
                  height: 20,
                ),
                CustamContainer(
                  wigth: double.infinity,
                  hight: 200,
                  cir: 15,
                  col: lightgray,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Textcustam(
                              text: 'You are Selling ',
                              size: 20,
                              weight: FontWeight.w600,
                            ),
                            Textcustam(
                              text: 'TOKENS',
                              size: 20,
                              col: grayCol,
                              weight: FontWeight.w600,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: 'Selling Amount',
                              size: 16,
                              col: grayCol,
                            ),
                            Textcustam(
                              text: '\$ 51.40',
                              size: 16,
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
                              text: 'Price',
                              size: 16,
                              col: grayCol,
                            ),
                            Textcustam(
                              text: '\$ 10 - 7000T',
                              size: 16,
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
                              text: 'Token Amount',
                              size: 16,
                              col: grayCol,
                            ),
                            Textcustam(
                              text: '30000',
                              size: 16,
                              weight: FontWeight.w600,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )

                //  2nd   Buyers Info

                ,
                SizedBox(
                  height: 20,
                ),
                CustamContainer(
                  wigth: double.infinity,
                  hight: 200,
                  cir: 15,
                  col: lightgray,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Textcustam(
                              text: 'Buyers Info',
                              size: 20,
                              weight: FontWeight.w600,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Textcustam(
                              text: 'Email',
                              size: 16,
                              col: grayCol,
                            ),
                            Textcustam(
                              text: 'info@gmail.com',
                              size: 16,
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
                              text: 'Name',
                              size: 16,
                              col: grayCol,
                            ),
                            Textcustam(
                              text: 'thementalpower',
                              size: 16,
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
                              text: 'Gpay Number',
                              size: 16,
                              col: grayCol,
                            ),
                            Textcustam(
                              text: '+91-1234567890',
                              size: 16,
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
                CustamContainer(
                  wigth: double.infinity,
                  cir: 15,
                  col: lightgray,
                  hight: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Textcustam(
                          text: 'Chat with the buyer',
                          col: grayCol,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 23,
                              width: 24,
                            ),
                            SvgPicture.asset(Images.Chat),
                            Positioned(
                              right: 0,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Color(0xff586074),
                                child: Textcustam(
                                  text: '1',
                                  size: 8,
                                  weight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustamContainer(
                      wigth: 150,
                      hight: 48,
                      borders: true,
                      bordercol: appColor,
                      cir: 10,
                      child: Textcustam(
                        text: 'Cancel',
                        col: appColor,
                        size: 20,
                        weight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 150,
                      child: RoundButton(
                        title: 'Realese ',
                        backcol: grayCol,
                        fun: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
