import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Model/notificationsModel.dart';

class NotificationController extends GetxController {
  List todayNotification = [
    NotificationsModel(
        col: Color(0xff67BFFF),
        messing:
            'An unrecognised windows pc just logged in near rewari, haryana , in',
        type: 'RECI.'),
    NotificationsModel(
        col: Color(0xff85CD79),
        messing: 'dan koe, nba and others shared 23 photos',
        type: 'SENT'),
    NotificationsModel(
        col: Color(0xff85CD79),
        messing: 'sports_xyz started following you.',
        type: 'SENT')
  ];
}
