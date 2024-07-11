import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class TransferFund3 extends StatelessWidget {
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
                        text: 'Transfer Funds ',
                        size: 22,
                        weight: FontWeight.w700,
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Textcustam(
                        text: 'Step 3/4',
                        col: grayCol,
                      ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: lightgray,
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SvgPicture.asset(
                      Images.stepline,
                      height: 100,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: Get.width * 0.740,
                        // color: Colors.amber,
                        child: RichText(
                            text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                                text: 'Step 1st',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            TextSpan(text: ' : Leave the tudoom app and\n '),
                            TextSpan(
                                text:
                                    'transfer the funds to the seller with your own banking app.  ')
                          ],
                        )),
                      ),
                      SizedBox(
                        height: 43,
                      ),
                      Container(
                        width: Get.width * 0.740,
                        // color: Colors.amber,
                        child: RichText(
                            text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                                text: 'Step 2nd',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text:
                                    ' : After transferring funds click  on “Notify Seller” button below. \n '),
                          ],
                        )),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 64,
                col: Color(0xfff5f5f5),
                cir: 20,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Transfer Amount',
                            col: grayCol,
                            weight: FontWeight.w500,
                            size: 16,
                          ),
                          Row(
                            children: [
                              Textcustam(
                                text: '\$50',
                                weight: FontWeight.w700,
                                col: Color(0xff3A3939),
                                size: 22,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 144,
                col: Color(0xfff5f5f5),
                cir: 20,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Textcustam(
                        text: 'Seller Info',
                        size: 18,
                        weight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Username',
                            col: grayCol,
                            weight: FontWeight.w500,
                            size: 16,
                          ),
                          Textcustam(
                            text: 'Jack Idowu',
                            col: darkblack,
                            weight: FontWeight.w500,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Email',
                            weight: FontWeight.w500,
                            size: 16,
                            col: grayCol,
                          ),
                          Textcustam(
                            text: 'user@gmail.com',
                            weight: FontWeight.w500,
                            col: darkblack,
                            size: 16,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 64,
                col: Color(0xfff5f5f5),
                cir: 20,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Payment Methods',
                            col: grayCol,
                            weight: FontWeight.w500,
                            size: 16,
                          ),
                          Row(
                            children: [
                              Textcustam(
                                text: 'Gpay | IMPS',
                                weight: FontWeight.w500,
                                col: Color(0xff3A3939),
                                size: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //Payment Methods    //Gpay  //IMPS
              SizedBox(
                height: 15,
              ),

              CustamContainer(
                wigth: double.infinity,
                hight: 104,
                col: Color(0xfff5f5f5),
                cir: 20,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Gpay',
                            col: grayCol,
                            weight: FontWeight.w500,
                            size: 16,
                          ),
                          Textcustam(
                            text: '+91-1234567890',
                            weight: FontWeight.w500,
                            col: darkblack,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'IMPS',
                            weight: FontWeight.w500,
                            size: 16,
                            col: grayCol,
                          ),
                          Textcustam(
                            text: '+91-1234567890',
                            weight: FontWeight.w500,
                            size: 16,
                            col: darkblack,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 60,
                col: Color(0xfff5f5f5),
                cir: 20,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Textcustam(
                      text: 'Chat with seller',
                      col: grayCol,
                      weight: FontWeight.w500,
                      size: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CustamContainer(
                      wigth: Get.width * 0.4,
                      hight: 48,
                      borders: true,
                      bordercol: grayCol,
                      cir: 8,
                      child: Textcustam(
                        text: 'Cancel',
                        size: 18,
                        weight: FontWeight.w500,
                        col: grayCol,
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * 0.4,
                    height: 48,
                    child: RoundButton(
                      title: 'Notify Seller',
                      backcol: appColor,
                      fun: () {
                        Navigator.pushNamed(context, "/TransferFundStep4");
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
