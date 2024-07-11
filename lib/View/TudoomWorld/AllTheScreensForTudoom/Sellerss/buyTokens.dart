import 'package:flutter/material.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';

class BuyTokens extends StatelessWidget {
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
              text: 'Sell Tokens',
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                CustamContainer(
                  wigth: double.infinity,
                  hight: 350,
                  col: lightgray,
                  cir: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Textcustam(
                                  text: 'Price ',
                                  size: 16,
                                  col: grayCol,
                                ),
                                Textcustam(
                                  text: '\$10',
                                  size: 16,
                                  col: Colors.green,
                                  weight: FontWeight.w600,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Textcustam(
                                  text: 'Tokens ',
                                  size: 16,
                                  col: grayCol,
                                ),
                                Textcustam(
                                  text: '7000',
                                  size: 16,
                                  weight: FontWeight.w600,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // 2nd

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Textcustam(
                                  text: 'Amount ',
                                  size: 16,
                                  col: grayCol,
                                ),
                                Textcustam(
                                  text: '--\$',
                                  size: 16,
                                  weight: FontWeight.w600,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Textcustam(
                                  text: 'Quantity ',
                                  size: 16,
                                  col: grayCol,
                                ),
                                Textcustam(
                                  text: ' ---',
                                  size: 16,
                                  weight: FontWeight.w600,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Textfiledcustam(
                          hinttext: 'Enter Amount',
                          starticon: Container(
                            width: 5,
                            height: 10,
                            // color: Colors.amber,
                            child: Center(
                              child: Textcustam(
                                text: '\$',
                                weight: FontWeight.w700,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),

                        //  Move Gpay Class
                        //
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/AddGpay");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Color(0xffFFB42A),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Textcustam(
                                    text: 'Gpay',
                                    size: 16,
                                  ),
                                  Textcustam(
                                    text: ' (Gpay added)',
                                    size: 16,
                                    col: grayCol,
                                  )
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: appColor,
                              )
                            ],
                          ),
                        )

                        // Mi

                        ,
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color(0xffF56D58),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Textcustam(
                                  text: 'IMPS',
                                  size: 16,
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: appColor,
                            )
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          child: RoundButton(
                            title: 'Sell',
                            fun: () {},
                            backcol: appColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Textcustam(
                  text: 'Trade info',
                  size: 20,
                  weight: FontWeight.w600,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textcustam(
                      text: 'Pyment Window',
                      size: 16,
                      col: grayCol,
                    ),
                    Textcustam(
                      text: '15 Minutes',
                      size: 16,
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
                      text: 'Buyer’s Nickname',
                      size: 16,
                      col: grayCol,
                    ),
                    Textcustam(
                      text: 'thementalpower',
                      weight: FontWeight.w500,
                      col: appColor,
                      size: 16,
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
                      text: 'Seller payment method',
                      size: 16,
                      col: grayCol,
                    ),
                    Row(
                      children: [
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
                          width: 10,
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
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
