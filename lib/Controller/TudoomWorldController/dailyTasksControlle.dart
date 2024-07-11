import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Model/notificationsModel.dart';
import 'package:tudoom/utils/images.dart';

class DailyTasksController extends GetxController {
  RxInt tasklist = 0.obs;

  List<NotificationsModel> daliylist = [
    NotificationsModel(
        col: Color(0xff01D7B3),
        messing: 'The Collectionist',
        type: Images.collectionist),
    NotificationsModel(
        col: Color(0xff588BF3),
        messing: 'Reach For Stars',
        type: Images.Reach2),
    NotificationsModel(
        col: Color(0xff33A3D6),
        messing: 'Market Spelunker',
        type: Images.Market3),
  ];
}
