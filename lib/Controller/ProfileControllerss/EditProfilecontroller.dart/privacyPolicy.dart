import 'package:flutter/material.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class PrivacyPolicyScreen extends StatelessWidget {
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
                    text: 'Privacy Policy',
                    size: 22,
                    weight: FontWeight.w700,
                  )
                ],
              ),
              Divider(
                color: lightgray,
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Textcustam(
                  text:
                      'Lorem ipsum dolor sit amet consectetur. Vulputate mauris viverra a ipsum. Elit eu magna nunc laoreet phasellus quam. Faucibus elementum nulla nunc mauris sit dui. Volutpat euismod suspendisse elementum at sed. Sed at egestas tellus ornare venenatis diam curabitur risus. Eu risus quam in tincidunt aliquam interdum.\n\nLorem ipsum dolor sit amet consectetur. Vulputate mauris viverra a ipsum. Elit eu magna nunc laoreet phasellus quam. Faucibus elementum nulla nunc mauris sit dui. Volutpat euismod suspendisse elementum at sed. Sed at egestas tellus ornare venenatis diam curabitur risus. Eu risus quam in tincidunt aliquam interdum.\n\nLorem ipsum dolor sit amet consectetur. Vulputate mauris viverra a ipsum. Elit eu magna nunc laoreet phasellus quam. Faucibus elementum nulla nunc mauris sit dui. Volutpat euismod suspendisse elementum at sed. Sed at egestas tellus ornare venenatis diam curabitur risus. Eu risus quam in tincidunt aliquam interdum.',
                  weight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
