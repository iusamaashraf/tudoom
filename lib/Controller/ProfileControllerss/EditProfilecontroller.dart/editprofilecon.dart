import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';

class EditProfileController extends GetxController {
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController Gender = TextEditingController();
  TextEditingController usernmae = TextEditingController();
  TextEditingController name = TextEditingController();

  void paymentMethodChange(BuildContext context) {
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
                    wigth: 70,
                    hight: 5,
                    cir: 5,
                    col: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextOntab(
                  text: 'Gpay',
                  fun: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                TextOntab(
                  text: 'Phone Pe',
                  fun: () {},
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
