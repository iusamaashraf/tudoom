import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class SellController extends GetxController {
  final fulname = TextEditingController();
  final GpayNo = TextEditingController();
//                                Navigator.pushNamed(context, "/BuyTokens");

  sowDiloagSheet(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          insetPadding: EdgeInsets.all(20),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Textcustam(
                text: 'Seller Request',
                size: 20,
                weight: FontWeight.w600,
                col: appColor,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: '@terminate ',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black)),
                      TextSpan(
                          text:
                              'request you to sell coins if you want to continue press continue',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.black))
                    ])),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CustamContainer(
                      wigth: 130,
                      hight: 48,
                      borders: true,
                      bordercol: appColor,
                      cir: 10,
                      child: Textcustam(
                        text: 'Reject',
                        col: appColor,
                        size: 20,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: RoundButton(
                      title: 'Continue ',
                      backcol: appColor,
                      fun: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, "/BuyTokens");
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
