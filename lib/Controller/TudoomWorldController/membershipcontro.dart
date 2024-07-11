import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Model/notificationsModel.dart';
import 'package:tudoom/utils/images.dart';

class MemberShipController extends GetxController {
  List membershipcon = [
    NotificationsModel(
        col: Color(0xff5B93C7), messing: 'Headmentor', type: Images.bluestar),
    NotificationsModel(
        col: Color(0xffCE976F), messing: 'Mentor', type: Images.graysta)
  ];
}
