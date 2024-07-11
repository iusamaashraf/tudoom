import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/Post%20AdsController/postAdController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';

class PostAdsScreen extends StatelessWidget {
  final controller = Get.put(PostAdController());
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
                    text: 'Step 1/4',
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
              CustamContainer(
                wigth: double.infinity,
                hight: 115,
                col: lightgray,
                cir: 15,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Textcustam(
                        text:
                            'Know how this advertisement system works and how can you earn by this.',
                        size: 16,
                        weight: FontWeight.w500,
                        col: grayCol,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/KnowmoreScreen");
                        },
                        child: Textcustam(
                          text: 'Know more',
                          size: 16,
                          weight: FontWeight.w600,
                          col: appColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Textcustam(
                text: 'Enter your price for 10 credits',
                size: 18,
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 8,
              ),
              Textfiledcustam(
                controller: controller.priceCradits,
                height: 48,
                hinttext: 'ex - 24 credits',
              ),
              SizedBox(
                height: 16,
              ),
              RoundButton(
                title: 'Next',
                fun: () {
                  Navigator.pushNamed(context, "/PostStep2");
                },
                backcol: appColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
