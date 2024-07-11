import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Model/starsBadgesModel.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class StarsBadgesController extends GetxController {
  RxInt indexcount = 0.obs;

  List<StarsBadgesModel> progress = [
    StarsBadgesModel(
        complect: '85',
        pic: Images.badges6,
        task: 'Task 1/5',
        title: 'Master collector',
        col: Color(0xfffff1ad)),
    StarsBadgesModel(
        complect: '70',
        pic: Images.badges1,
        task: 'Task 3/5',
        title: 'The Collectionist',
        col: Color(0xffa4f1e4)),
    StarsBadgesModel(
        complect: '85',
        pic: Images.badges5,
        task: '',
        title: 'Reach for stars',
        col: Color(0xffbcd1fa)),
    StarsBadgesModel(
        complect: '85',
        pic: Images.badges3,
        task: '',
        title: 'Celling Breaker',
        col: Color(0xffb6babc)),
    StarsBadgesModel(
        complect: '85',
        pic: Images.badges4,
        task: '',
        title: 'People’s Person',
        col: Color(0xffddd7e7)),
    StarsBadgesModel(
        complect: '85',
        pic: Images.badges5,
        task: '',
        title: 'Market Spelunker',
        col: Color(0xffddd7e7)),
  ];

  void showdialogFun(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Textcustam(
                text: 'Master Collector',
                size: 20,
                weight: FontWeight.w600,
                col: appColor,
              ),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                align: TextAlign.center,
                text:
                    'Feugiat cum tellus elementum ut adipiscing augue ullamcorper. Quam quis aliquam laoreet aliquam rutrum blandit tempor diam nulla. Sodales dignissim neque ultrices in sit egestas vel enim sed.',
                size: 16,
                weight: FontWeight.w400,
              )
            ],
          ),
        );
      },
    );
  }

  List<StarsBadgesModel> Completed = [
    StarsBadgesModel(
        complect: '85',
        pic: Images.badges5,
        task: 'Completed',
        title: 'Reach for stars',
        col: Color(0xffbcd1fa)),
    StarsBadgesModel(
        complect: '85',
        pic: Images.badges3,
        task: 'Completed',
        title: 'Celling Breaker',
        col: Color(0xffb6babc)),
    StarsBadgesModel(
        complect: '85',
        pic: Images.badges4,
        task: 'Completed',
        title: 'People’s Person',
        col: Color(0xffddd7e7)),
    StarsBadgesModel(
        complect: '85',
        pic: Images.badges5,
        task: 'Completed',
        title: 'Market Spelunker',
        col: Color(0xffddd7e7)),
  ];
}

//  fff1ad
//a4f1e4
//bcd1fa
//  b6babc
//ddd7e7
//ddd7e7
