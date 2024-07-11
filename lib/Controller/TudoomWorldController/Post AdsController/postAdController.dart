import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostAdController extends GetxController {
  TextEditingController priceCradits = TextEditingController();

  TextEditingController gpayNo = TextEditingController();
  TextEditingController apassword = TextEditingController();
  TextEditingController accountpasswoerd = TextEditingController();

  TextEditingController phonepaycontroller = TextEditingController();
  TextEditingController phonepaypassword = TextEditingController();
  TextEditingController phonepayAccountpassword = TextEditingController();

  RxBool googlepay = false.obs;
  RxBool phonepay = false.obs;

  RxBool imps = false.obs;
  RxBool paytm = false.obs;

  RxBool paypal = false.obs;
}
