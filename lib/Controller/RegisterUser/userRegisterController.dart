import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterUserController extends GetxController {
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController otpphone = TextEditingController();
  TextEditingController otpemail = TextEditingController();
  TextEditingController Fulname = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  Rx<DateTime> selectedDate = DateTime.now().obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }
}
