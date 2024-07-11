import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/homeController/homecontroller.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class PostDesciription extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 57,
              ),
              Container(
                height: 140,
                width: 130,
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: FileImage(controller.imagess!),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: 'Add Desciription ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/TagePeople");
                },
                contentPadding: EdgeInsets.all(0),
                title: Textcustam(
                  text: 'Tag people ',
                  weight: FontWeight.w500,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                ),
              ),
              Divider(
                color: lightgray,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Textcustam(
                  text: 'Add Location ',
                  weight: FontWeight.w500,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                ),
              ),
              Divider(
                color: lightgray,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Textcustam(
                  text: 'Add Music ',
                  weight: FontWeight.w500,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                ),
              ),
              Divider(
                color: lightgray,
              ),
              SizedBox(
                height: 39,
              ),
              RoundButton(
                title: 'Post',
                backcol: appColor,
                fun: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
