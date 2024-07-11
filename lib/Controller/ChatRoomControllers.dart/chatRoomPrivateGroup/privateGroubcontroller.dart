import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Model/GroupchatModel.dart';
import 'package:tudoom/utils/images.dart';

class PrivateGroubController extends GetxController {
  List<String> privateChat = [
    'Hi,guys can you hear me',
    'No i have had and idea about the new project, come to me right now',
    'Noo.sorry but i won’t able to join',
    'No i have had and idea about the new project, come to me right now',
    'No i have had and idea about the new project, come to me right now'
  ];

  List<GroupChatModel> groupChat = [
    GroupChatModel(
        image: Images.post,
        message: 'Hi,guys can you hear me',
        name: 'Bessie',
        time: '2:30',
        col: Color(0xffD1384E)),
    GroupChatModel(
        image: Images.chat2,
        message:
            'No i have had and idea about the new project, come to me right now',
        name: 'Bessie',
        time: '2:30',
        col: Color(0xffD1384E)),
    GroupChatModel(
        image: Images.chat3,
        message: 'Hi,guys can you hear me',
        name: 'Ahmed Fandid',
        time: '2:30',
        col: Color(0xffD1384E)),
    GroupChatModel(
        image: Images.cjhat4,
        message:
            'Hey how are you today? Sunday Serice topic: Overthinking Analogies',
        name: 'Maudy Ayun',
        time: '1:30 PM',
        col: Color(0xff0078D7)),
    GroupChatModel(
        image: Images.chat5,
        message: 'Noo.sorry but i won’t able to join',
        name: 'Tiana Bergson',
        time: '2:30',
        col: Color(0xff00C0DA)),
    GroupChatModel(
        image: Images.chat6,
        message: 'Noo.sorry but i won’t able to join',
        name: 'Bessie',
        time: '2:30',
        col: Color(0xffD1384E)),
    GroupChatModel(
        image: Images.post,
        message:
            'Thanks for reaching out! Right now, I\'m not the best person to help with this. ...',
        name: 'Gustavo Kenter',
        time: '2:30',
        col: Color(0xff00C0DA))
  ];
}
