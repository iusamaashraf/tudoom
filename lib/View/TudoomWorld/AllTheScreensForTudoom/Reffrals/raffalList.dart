import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class ReffralList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          SizedBox(
            height: 5,
          ),
          Divider(
            color: lightgray,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Textcustam(
                text: 'Reward Earned',
                size: 16,
                weight: FontWeight.w600,
              ),
              Textcustam(
                text: '\$2000',
                size: 16,
                weight: FontWeight.w700,
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
            height: 20,
          ),
          Container(
              height: 160,
              //  color: Colors.amber,
              child: Image.asset(Images.Livello9copia)),
          SizedBox(
            height: 20,
          ),
          Textcustam(
            align: TextAlign.center,
            text: 'Invite your friend and earn 250\$ on each reffer',
            size: 20,
            weight: FontWeight.w600,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: Get.width * 0.8,
            child: Textcustam(
              align: TextAlign.center,
              text:
                  'Integer id quis vulputate mauris. Hendrerit sapien id at blandit sed. Dolor aenean diam, ultrices proin cras.',
              col: grayCol,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustamContainer(
            wigth: double.infinity,
            hight: 50,
            borders: true,
            bordercol: appColor,
            cir: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'SWXT45R',
                    size: 16,
                    col: appColor,
                  ),
                  VerticalDivider(
                    color: appColor,
                  ),
                  Textcustam(
                    text: 'Copy Code',
                    size: 16,
                    col: appColor,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RoundButton(
            title: 'Invite friend',
            backcol: appColor,
            fun: () {
              Navigator.pushNamed(context, "/ReffralsInviteFriends");
            },
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
