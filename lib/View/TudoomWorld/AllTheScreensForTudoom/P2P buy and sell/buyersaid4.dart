import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class TransferFundStep4 extends StatelessWidget {
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
                        text: 'Step 4/4',
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
              SizedBox(
                height: 20,
              ),
              CustamContainer(
                  wigth: double.infinity,
                  hight: 64,
                  col: Color(0xfff5f5f5),
                  cir: 20,
                  child: Center(
                    child: Textcustam(
                      text: 'Seller is Realesing',
                      size: 18,
                      weight: FontWeight.w600,
                      col: appColor,
                    ),
                  )),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Textcustam(
                        text: 'Chat with seller',
                        col: grayCol,
                        size: 16,
                        weight: FontWeight.w500,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
