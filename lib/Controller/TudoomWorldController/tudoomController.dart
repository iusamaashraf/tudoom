import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Model/tudoomModel.dart';
import 'package:tudoom/utils/images.dart';

class TudoomWorldController extends GetxController {
  final pagecon = PageController();

  List<TudoomWorldModel> tudoomitems = [
    TudoomWorldModel(icon: Images.interface, text: 'Transfer credit'),
    TudoomWorldModel(icon: Images.expanddiamond, text: 'Add Credit'),
    TudoomWorldModel(icon: Images.moneycredit, text: 'Credit History'),
    TudoomWorldModel(icon: Images.BS, text: 'P2P  Buy & Sell'),
    TudoomWorldModel(icon: Images.shoppinggift, text: 'Tudoom Store'),
    TudoomWorldModel(icon: Images.usersswitc, text: 'Post Adds'),
    TudoomWorldModel(icon: Images.jaha, text: 'Game History'),
    TudoomWorldModel(icon: Images.usersidentifier, text: 'Membership Upgrade'),
    TudoomWorldModel(icon: Images.usersidentifier, text: 'Leader board'),
    TudoomWorldModel(icon: Images.usersidentifier, text: 'Your Tasks'),
    TudoomWorldModel(icon: Images.usersidentifier, text: 'Refrells'),
  ];

  List tudoomitem2nd = [
    TudoomWorldModel(icon: Images.tudoom8, text: 'Officials'),
    TudoomWorldModel(icon: Images.Account, text: 'Become trader'),
    TudoomWorldModel(icon: Images.tudoom6, text: 'Leader board'),
    TudoomWorldModel(icon: Images.tudoom5, text: 'Taccount'),
    TudoomWorldModel(icon: Images.tudoom4, text: 'Refferals'),
    TudoomWorldModel(icon: Images.tudoom3, text: 'Updates'),
    TudoomWorldModel(icon: Images.tudoom2, text: 'Store'),
    TudoomWorldModel(icon: Images.tudoom1, text: 'Badges'),
  ];
}
