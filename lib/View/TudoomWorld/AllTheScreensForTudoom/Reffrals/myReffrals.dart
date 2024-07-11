import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/ReffralsController/reffralsController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class MyReffralsList extends StatelessWidget {
  final controller = Get.put(ReffralsControllers());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: controller.refferalStatu.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustamContainer(
              wigth: double.infinity,
              col: controller.refferalStatu[index] == 'Secussfull'
                  ? Color(0xfffcecec)
                  : Color(0xffedf5f1),
              hight: 194,
              cir: 15,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Textcustam(
                    text: 'Eugenia Fox',
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Textcustam(
                        text: 'Refferal Status : ',
                        col: grayCol,
                      ),
                      Textcustam(
                        text: controller.refferalStatu[index],
                        col: controller.refferalStatu[index] == 'Secussfull'
                            ? Colors.green
                            : grayCol,
                        weight: FontWeight.w500,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        controller.refferalStatu[index] == 'Secussfull'
                            ? Icons.check_circle
                            : Icons.circle_outlined,
                        color: controller.refferalStatu[index] == 'Secussfull'
                            ? Colors.green
                            : darkblack,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Textcustam(
                        text: 'Account created',
                        size: 16,
                        col: grayCol,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: Get.width * 0.650,
                    child: RoundButton(
                      title: 'Claim',
                      backcol: appColor,
                      fun: () {
                        Navigator.pushNamed(context, "/StarsBadges");
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
