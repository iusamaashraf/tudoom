import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/ReffralsController/reffralsController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class ReffralsInviteFriends extends StatefulWidget {
  @override
  State<ReffralsInviteFriends> createState() => _ReffralsInviteFriendsState();
}

class _ReffralsInviteFriendsState extends State<ReffralsInviteFriends> {
  List<int> selected = [];

  final controller = Get.put(ReffralsControllers());

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
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios)),
                Textcustam(
                  text: 'All Friends',
                  size: 22,
                  weight: FontWeight.w600,
                ),
              ],
            ),
            Divider(
              color: lightgray,
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: controller.InviteFirend.length,
                itemBuilder: (context, index) {
                  bool isselected = selected.contains(index);
                  return ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(controller.InviteFirend[index].pic),
                      ),
                      title: Textcustam(
                        text: controller.InviteFirend[index].title,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      subtitle: Textcustam(
                        text: controller.InviteFirend[index].subtitle,
                        col: grayCol,
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          if (isselected) {
                            selected.remove(index);
                          } else {
                            selected.add(index);
                          }
                          setState(() {});
                        },
                        child: CustamContainer(
                          wigth: 20,
                          hight: 20,
                          cir: 10,
                          borders: true,
                          bordercol: isselected == true ? appColor : grayCol,
                          child: Container(
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: isselected == true
                                    ? appColor
                                    : Colors.transparent,
                                shape: BoxShape.circle),
                          ),
                        ),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
