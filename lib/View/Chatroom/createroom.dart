import 'package:flutter/material.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class CreateRoom extends StatefulWidget {
  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  int _radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 57,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pop(context);
                //   },
                //   child: Icon(Icons.arrow_back_ios_new),
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                Textcustam(
                  text: 'Create Room',
                  size: 22,
                  weight: FontWeight.w700,
                ),
              ],
            ),
            Divider(
              color: lightgray,
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            CustamContainer(
              wigth: double.infinity,
              hight: 80,
              col: lightgray,
              cir: 13,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Textcustam(
                  text: 'Public',
                  weight: FontWeight.w500,
                ),
                subtitle: Textcustam(
                  text: 'Your room can be seen by everyone',
                  col: grayCol,
                  size: 13,
                ),
                trailing: Radio(
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: (value) {
                    setState(() {
                      _radioValue = value!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustamContainer(
              wigth: double.infinity,
              hight: 80,
              col: lightgray,
              cir: 13,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Textcustam(
                  text: 'Social',
                  weight: FontWeight.w500,
                ),
                subtitle: Textcustam(
                  text: 'Your room can be seen by friends',
                  col: grayCol,
                  size: 13,
                ),
                trailing: Radio(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: (value) {
                    setState(() {
                      _radioValue = value!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustamContainer(
              wigth: double.infinity,
              hight: 80,
              col: lightgray,
              cir: 13,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Textcustam(
                  text: 'Invite only',
                  weight: FontWeight.w500,
                ),
                subtitle: Textcustam(
                  text: 'Your room can be private',
                  col: grayCol,
                  size: 13,
                ),
                trailing: Radio(
                  value: 2,
                  groupValue: _radioValue,
                  onChanged: (value) {
                    setState(() {
                      _radioValue = value!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RoundButton(
              title: 'Continue',
              backcol: appColor,
              fun: () {
                Navigator.pushNamed(context, "/RoomPermissionScreen");
              },
            ),
            SizedBox(
              height: 15,
            ),
            Textcustam(
              text: 'Custom room settings',
              weight: FontWeight.w600,
              col: appColor,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
