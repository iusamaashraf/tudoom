import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class SocialMediaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Expanded(child: Divider()),
              Textcustam(
                text: '   or  ',
                weight: FontWeight.w600,
                col: Colors.grey,
              ),
              Expanded(child: Divider()),
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustamContainer(
                wigth: 60,
                hight: 60,
                borders: true,
                bordercol: Color(0xffD0CFCF),
                cir: 10,
                child: Image.asset(Images.google),
              ),
              CustamContainer(
                wigth: 60,
                hight: 60,
                borders: true,
                bordercol: Color(0xffD0CFCF),
                cir: 10,
                child: SvgPicture.asset(Images.apple),
              ),
              CustamContainer(
                wigth: 60,
                hight: 60,
                borders: true,
                bordercol: Color(0xffD0CFCF),
                cir: 10,
                child: Image.asset(Images.window),
              )
            ],
          ),
        ),
      ],
    );
  }
}
