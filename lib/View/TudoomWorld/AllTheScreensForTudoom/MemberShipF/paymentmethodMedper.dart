import 'package:flutter/material.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class MemberShipPaymentMethod extends StatefulWidget {
  @override
  _MemberShipPaymentMethodState createState() =>
      _MemberShipPaymentMethodState();
}

class _MemberShipPaymentMethodState extends State<MemberShipPaymentMethod> {
  int? _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Icon(Icons.arrow_back_ios_new),
                ),
                SizedBox(
                  width: 10,
                ),
                Textcustam(
                  text: 'Membership  ',
                  size: 22,
                  weight: FontWeight.w700,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: lightgray,
            ),
            SizedBox(
              height: 10,
            ),
            Textcustam(
              text: 'Choose Your Payment Method',
              size: 16,
              weight: FontWeight.w500,
            ),
            buildPaymentMethodRow('Google Pay', 0),
            buildPaymentMethodRow('Phone Pe', 1),
            buildPaymentMethodRow('IMPS', 2),
            buildPaymentMethodRow('Paytm', 3),
            buildPaymentMethodRow('Paypal', 4),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          height: 44,
          child: RoundButton(
            title: 'Continue',
            backcol: appColor,
            fun: () {
              // You can access the selected payment method using _selectedPaymentMethod
              print('Selected payment method: $_selectedPaymentMethod');
            },
          ),
        ),
      ),
    );
  }

  Widget buildPaymentMethodRow(String text, int value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Textcustam(
          text: text,
        ),
        Radio(
          value: value,
          groupValue: _selectedPaymentMethod,
          onChanged: (int? newValue) {
            setState(() {
              _selectedPaymentMethod = newValue;
            });
          },
        )
      ],
    );
  }
}
