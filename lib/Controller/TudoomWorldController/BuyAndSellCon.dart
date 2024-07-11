import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/CustamWidget/textFiled.dart';

class BuyAndSellController extends GetxController {
  RxBool buy = true.obs;

  RxInt indexNo = 0.obs;

  /// List item select  enterAmountSheet

  enterAmountSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: CustamContainer(
                  wigth: 60,
                  hight: 6,
                  cir: 5,
                  col: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Textcustam(
                  text: 'Enter Amount',
                  size: 18,
                  weight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Textfiledcustam(
                  lasticon: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Textcustam(
                      text: 'INR',
                      size: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: grayCol,
                height: 30,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Textcustam(
                      text: 'Payment Methods',
                      size: 18,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(
                      () => SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                indexNo.value = 0;
                              },
                              child: CustamContainer(
                                wigth: 90,
                                hight: 40,
                                borders: indexNo == 0 ? false : true,
                                bordercol: gray,
                                col: indexNo == 0
                                    ? appColor
                                    : Colors.transparent,
                                cir: 30,
                                child: Textcustam(
                                    text: 'Phone pe',
                                    weight: FontWeight.w600,
                                    col: indexNo == 0 ? white : grayCol),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            GestureDetector(
                              onTap: () {
                                indexNo.value = 1;
                              },
                              child: CustamContainer(
                                wigth: 100,
                                hight: 40,
                                borders: indexNo == 1 ? false : true,
                                cir: 30,
                                col: indexNo == 1
                                    ? appColor
                                    : Colors.transparent,
                                bordercol: gray,
                                child: Textcustam(
                                  text: 'Gpay',
                                  weight: FontWeight.w600,
                                  col: indexNo == 1 ? white : grayCol,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            GestureDetector(
                              onTap: () {
                                indexNo.value = 2;
                              },
                              child: CustamContainer(
                                wigth: 90,
                                hight: 40,
                                borders: indexNo == 2 ? false : true,
                                cir: 30,
                                col: indexNo == 2
                                    ? appColor
                                    : Colors.transparent,
                                bordercol: gray,
                                child: Textcustam(
                                  text: 'IMPS',
                                  weight: FontWeight.w600,
                                  col: indexNo == 2 ? white : grayCol,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          indexNo.value = 3;
                        },
                        child: CustamContainer(
                          wigth: 90,
                          hight: 40,
                          borders: indexNo == 3 ? false : true,
                          cir: 30,
                          col: indexNo == 3 ? appColor : Colors.transparent,
                          bordercol: gray,
                          child: Textcustam(
                            text: 'Paypal',
                            weight: FontWeight.w600,
                            col: indexNo == 3 ? white : grayCol,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        );
      },
    );
  }
}
