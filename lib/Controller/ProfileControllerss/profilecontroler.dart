import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class ProfileController extends GetxController {
  RxInt indexNo = 0.obs;

  List postPhotos = [
    Images.post1,
    Images.post2,
    Images.post3,
    Images.post4,
    Images.post5,
    Images.post1,
    Images.post2,
    Images.post3,
    Images.post4,
    Images.post5,
  ];

  bottomsheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustamContainer(
                    wigth: 100,
                    hight: 5,
                    cir: 5,
                    col: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextOntab(
                  text: 'Edit Profile',
                  fun: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/EditProfile");
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextOntab(
                  text: 'Change Password',
                  fun: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/ChangePassword");
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextOntab(
                  text: 'Privacy and Security',
                  fun: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextOntab(
                  text: 'Change Payment Methods',
                  fun: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, "/ChangePaymentMethods");
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextOntab(
                  text: 'Privacy Policy',
                  fun: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/PrivacyPolicyScreen");
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextOntab(
                  text: 'Delete or Deactivate Account',
                  fun: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                TextOntab(
                  text: 'Help',
                  fun: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                TextOntab(
                  text: 'Log Out',
                  col: Color(0xffCF0909),
                  fun: () {
                    Navigator.pop(context);
                    logoutDiloge(context);
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustamContainer(
                    wigth: 150,
                    hight: 5,
                    cir: 5,
                    col: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void logoutDiloge(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          //contentPadding: EdgeInsets.all(),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
              ),
              Textcustam(
                text: 'Confirm that you are logging out ? ',
                //  size: 15,
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CustamContainer(
                      wigth: 103,
                      hight: 48,
                      borders: true,
                      cir: 7,
                      bordercol: grayCol,
                      child: Textcustam(
                        text: 'Cancel',
                        col: grayCol,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RoundButton(
                      title: 'Log Out',
                      backcol: appColor,
                      fun: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/LoginScreen", (route) => false);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
