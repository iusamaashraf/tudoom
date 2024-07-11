import 'package:flutter/material.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

Color back1 = Color(0xff9cc6f1);
Color white = Colors.white;
Color gray = Color(0xffD0CFCF);
Color appColor = Color(0xff7D5BC7);
Color lightgray = Color(0xffE2E8F0);
Color darkblack = Color(0xff3A3939);
Color grayCol = Colors.grey;

class TextOntab extends StatelessWidget {
  String text;
  VoidCallback fun;
  Color? col;
  TextOntab({required this.text, required this.fun, this.col = Colors.black});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Textcustam(
        text: text,
        size: 18,
        weight: FontWeight.w500,
        col: col,
      ),
    );
  }
}
