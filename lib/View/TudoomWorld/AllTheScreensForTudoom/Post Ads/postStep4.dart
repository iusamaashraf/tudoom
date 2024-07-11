import 'package:flutter/material.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class PostAddStep4 extends StatelessWidget {
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
                        text: 'Post Ads',
                        size: 22,
                        weight: FontWeight.w700,
                      )
                    ],
                  ),
                  Textcustam(
                    text: 'Step 4/4',
                    size: 16,
                    weight: FontWeight.w500,
                    col: grayCol,
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
              Textcustam(
                text: 'All Done!',
                size: 19,
                weight: FontWeight.w600,
              ),
              Textcustam(
                text: 'These Details will be shown on your ad',
                size: 12,
                col: grayCol,
              ),
              SizedBox(
                height: 20,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 190,
                cir: 15,
                col: lightgray,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Username',
                            size: 16,
                            weight: FontWeight.w500,
                            col: grayCol,
                          ),
                          Textcustam(
                            text: 'Corey Culhane',
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
                            text: 'Your Price for 10C',
                            size: 16,
                            weight: FontWeight.w500,
                            col: grayCol,
                          ),
                          Textcustam(
                            text: '\$10.5',
                            size: 16,
                            weight: FontWeight.w600,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ///  Start
                      ///
                      ///

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: 'Total credits you have',
                            size: 16,
                            weight: FontWeight.w500,
                            col: grayCol,
                          ),
                          Textcustam(
                            text: '400',
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
                            text: 'Payment Methods',
                            size: 16,
                            weight: FontWeight.w500,
                            col: grayCol,
                          ),
                          Textcustam(
                            text: 'Gpay | IMPS',
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
                            text: 'Your trades',
                            size: 16,
                            weight: FontWeight.w500,
                            col: grayCol,
                          ),
                          Textcustam(
                            text: '197 Trades | 98%`',
                            size: 16,
                            weight: FontWeight.w600,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //
              SizedBox(
                height: 30,
              ),
              Textcustam(
                text: 'Demo Ad',
                size: 19,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 10,
              ),
              CustamContainer(
                wigth: double.infinity,
                hight: 190,
                bordercol: lightgray,
                borders: true,
                cir: 12,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(Images.post5),
                                radius: 10,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Textcustam(
                                text: 'Stoic.sore',
                                size: 12,
                                col: grayCol,
                              )
                            ],
                          ),
                          Textcustam(text: '197 Trades | 98%')
                        ],
                      ),
                    ),
                    Divider(
                      color: lightgray,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Textcustam(
                                text: 'Price',
                                col: grayCol,
                              ),
                              Textcustam(
                                text: '10C - \$200',
                                weight: FontWeight.w600,
                                size: 16,
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
                                text: 'Payment Methods',
                                col: grayCol,
                              ),
                              Textcustam(
                                text: 'Gpay | lMPS',
                                // weight: FontWeight.w500,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 35,
                            child: RoundButton(
                              title: 'Buy',
                              backcol: appColor,
                              fun: () {},
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            height: 0,
            color: lightgray,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CustamContainer(
                    wigth: 154,
                    hight: 48,
                    bordercol: grayCol,
                    borders: true,
                    cir: 10,
                    child: Textcustam(
                      text: 'Back',
                      size: 18,
                      weight: FontWeight.w600,
                      col: grayCol,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 48,
                  child: RoundButton(
                    title: 'Next',
                    backcol: appColor,
                    fun: () {
                      //    Navigator.pushNamed(context, "/PostAddStep4");
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
