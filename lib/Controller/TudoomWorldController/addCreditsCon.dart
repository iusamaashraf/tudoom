import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Model/notificationsModel.dart';
import 'package:tudoom/Model/tudoomModel.dart';
import 'package:tudoom/utils/images.dart';

class AddCreditsController extends GetxController {
  TextEditingController friendUsername = TextEditingController();
  TextEditingController enterAmount = TextEditingController();

  TextEditingController accountPassword = TextEditingController();

  List addCradit = [
    NotificationsModel(col: Color(0xffd69a00), messing: 'Gold Pack', type: ''),
    NotificationsModel(
        col: Color(0xffc0c0c0), messing: 'Silver Pack', type: ''),
    NotificationsModel(
        col: Color(0xffd1384e), messing: 'Platinum Pack', type: '')
  ];

  TextEditingController searchController = TextEditingController();

  List<TudoomWorldModel> invitePeople = [
    TudoomWorldModel(icon: Images.post, text: 'Adison Passaquindici Arcand'),
    TudoomWorldModel(icon: Images.firend1, text: 'Marcus Levin'),
    TudoomWorldModel(icon: Images.firend2, text: 'Cooper Franci'),
    TudoomWorldModel(icon: Images.firend3, text: 'Lincoln Philips'),
    TudoomWorldModel(icon: Images.firend4, text: 'Wilson Schleifer'),
    TudoomWorldModel(icon: Images.firend5, text: 'Jakob Siphron'),
    TudoomWorldModel(icon: Images.post, text: 'Emery Dias'),
    TudoomWorldModel(icon: Images.firend1, text: 'Kaiya Curtis'),
    TudoomWorldModel(icon: Images.firend2, text: 'Nolan Dorwart')
  ];
}
