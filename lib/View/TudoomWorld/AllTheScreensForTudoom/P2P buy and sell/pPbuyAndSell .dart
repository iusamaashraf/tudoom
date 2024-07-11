import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/BuyAndSellCon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class P2PBuyAndSell extends StatelessWidget {
  final controller = Get.put(BuyAndSellController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
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
                    text: 'P2P Buy And Sell ',
                    size: 22,
                    weight: FontWeight.w700,
                  )
                ],
              ),
              GestureDetector(
                  onTap: () {
                    controller.enterAmountSheet(context);
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
          Obx(
            () => Row(
              children: [
                GestureDetector(
                  onTap: () {
                    controller.buy.value = true;
                  },
                  child: CustamContainer(
                    wigth: 120,
                    hight: 45,
                    borders: controller.buy == false ? true : false,
                    bordercol: gray,
                    col: controller.buy == true ? appColor : Colors.transparent,
                    cir: 30,
                    child: Textcustam(
                        text: 'Buy',
                        weight: FontWeight.w600,
                        col: controller.buy == true ? white : grayCol),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    controller.buy.value = false;
                  },
                  child: CustamContainer(
                    wigth: 120,
                    hight: 45,
                    borders: controller.buy == true ? true : false,
                    cir: 30,
                    col:
                        controller.buy == false ? appColor : Colors.transparent,
                    bordercol: gray,
                    child: Textcustam(
                      text: 'Sell',
                      weight: FontWeight.w600,
                      col: controller.buy == false ? white : grayCol,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Obx(() => controller.buy.value == true
              ? Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CustamContainer(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage(Images.post5),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                        fun: () {
                                          Navigator.pushNamed(
                                              context, "/TransferFunds");
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              : SizedBox())
        ]),
      ),
    );
  }
}
