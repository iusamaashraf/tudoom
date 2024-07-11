import 'package:flutter/material.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class KnowmoreScreen extends StatelessWidget {
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
                  text: 'Post Ads',
                  size: 22,
                  weight: FontWeight.w700,
                ),
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
              hight: 230,
              col: lightgray,
              cir: 15,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Textcustam(
                          text: '1. ',
                          weight: FontWeight.w600,
                          col: grayCol,
                        ),
                        Container(
                          width: 260,
                          child: Textcustam(
                            text:
                                'The credits you can earn from winning in app games.',
                            weight: FontWeight.w600,
                            col: grayCol,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Textcustam(
                          text: '2. ',
                          weight: FontWeight.w600,
                          col: grayCol,
                        ),
                        Container(
                          width: 260,
                          child: Textcustam(
                            text:
                                ' You can sell those credits through p2p method.',
                            weight: FontWeight.w600,
                            col: grayCol,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Textcustam(
                          text: '3. ',
                          weight: FontWeight.w600,
                          col: grayCol,
                        ),
                        Container(
                          width: 260,
                          child: Textcustam(
                            text:
                                'You can put up ads for selling those credits by offering the minimum price per 10 credits.',
                            weight: FontWeight.w600,
                            col: grayCol,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
