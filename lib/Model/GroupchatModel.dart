import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroupChatModel extends GetxController {
  String image;
  String name;
  String time;
  String message;
  Color col;
  GroupChatModel(
      {required this.image,
      required this.message,
      required this.name,
      required this.time,
      required this.col});
}
