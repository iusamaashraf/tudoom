import 'package:flutter/material.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class SellerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 57,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new)),
                  SizedBox(
                    width: 10,
                  ),
                  Textcustam(
                    text: 'Seller Profile',
                    size: 22,
                    weight: FontWeight.w700,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: lightgray,
              ),
              SizedBox(
                height: 8,
              ),
              Container(height: 158, child: Image.asset(Images.sallerProfile)),
              SizedBox(
                height: 10,
              ),
              Textcustam(
                text: '@samantha_williams',
                size: 16,
                weight: FontWeight.w500,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textcustam(
                    text: 'Headmentor ',
                    col: grayCol,
                  ),
                  Image.asset(Images.madel),
                  Image.asset(Images.madel),
                  Image.asset(Images.madel)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: lightgray,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'Verification Profile',
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  Textcustam(
                    text: 'Verified',
                    col: Colors.green,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: ' Transactions',
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  Textcustam(
                    text: ' 250 | 15k+',
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'Success Rate',
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  Textcustam(
                    text: '95%',
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'Average realese time',
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  Textcustam(
                    text: '36 min',
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textcustam(
                    text: 'Positive Feedback',
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  Textcustam(
                    text: '100%',
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/SallerChatScreen");
                },
                child: CustamContainer(
                  wigth: double.infinity,
                  hight: 48,
                  bordercol: appColor,
                  borders: true,
                  cir: 10,
                  child: Textcustam(
                    text: 'Chat',
                    col: appColor,
                    size: 15,
                    weight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RoundButton(
                title: 'Report Seller',
                fun: () {},
                backcol: appColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Transactions  250 | 15k+
// c  95%

// Average realese time
// 36 min

// Positive Feedback 100%



//Report Seller   Chat