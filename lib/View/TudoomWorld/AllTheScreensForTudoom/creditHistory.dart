import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/creditHistoryCon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class CreditHistoryScreen extends StatelessWidget {
  final controller = Get.put(CreditHistoryController());
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
                        text: 'Credit History',
                        size: 22,
                        weight: FontWeight.w700,
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        controller.selectdateSheet(context);
                      },
                      child: SvgPicture.asset(Images.notilines))
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
                text: 'Today',
                size: 18,
                weight: FontWeight.w700,
              ),
              ListView.builder(
                padding: EdgeInsets.only(top: 15),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.credihistory.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: CustamContainer(
                      wigth: double.infinity,
                      hight: 96,
                      cir: 10,
                      borders: true,
                      bordercol: lightgray,
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10, right: 12),
                        leading: CircleAvatar(
                          backgroundColor: controller.credihistory[index].col,
                          child: Textcustam(
                            text: controller.credihistory[index].type,
                            col: white,
                            size: 10,
                            weight: FontWeight.w800,
                          ),
                        ),
                        title: Textcustam(
                          text: controller.credihistory[index].messing,
                          size: 14,
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Textcustam(
                              text: '400C',
                              size: 16,
                              weight: FontWeight.w700,
                            ),
                            Textcustam(
                              text: '12:28 PM',
                              size: 12,
                              weight: FontWeight.w500,
                              col: grayCol,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
