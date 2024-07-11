import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/TudoomWorldController/addCreditsCon.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class FriendListShow extends StatefulWidget {
  @override
  State<FriendListShow> createState() => _InvitePeopleState();
}

class _InvitePeopleState extends State<FriendListShow> {
  final controller = Get.put(AddCreditsController());

  List<String> selectedItems = [];
  String search = '';

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
                    child: Icon(Icons.arrow_back_ios_new)),
                SizedBox(
                  width: 10,
                ),
                Textcustam(
                  text: 'Your Friends ',
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
              height: 10,
            ),
            Container(
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: grayCol)),
              child: TextField(
                controller: controller.searchController,
                onChanged: (value) {
                  setState(() {
                    search = value.toLowerCase();
                  });
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    helperStyle: TextStyle(color: lightgray),
                    hintText: 'Search username of anyone',
                    prefixText: '    '),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Textcustam(
              text: ' Your Friends',
              size: 18,
              weight: FontWeight.w600,
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemBuilder: (context, index) {
                  final friend = controller.invitePeople[index];
                  if (search.isEmpty ||
                      friend.text.toLowerCase().contains(search)) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(friend.icon),
                      ),
                      title: Text(
                        friend.text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      trailing: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        value: selectedItems.contains(friend.text),
                        onChanged: (value) {
                          setState(() {
                            if (value != null && value) {
                              selectedItems.add(friend.text);
                            } else {
                              selectedItems.remove(friend.text);
                            }
                          });
                        },
                      ),
                    );
                  }
                  return Container();
                },
                itemCount: controller.invitePeople.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: RoundButton(
              title: 'Send',
              fun: () {},
              backcol: appColor,
            ),
          )
        ],
      ),
    );
  }
}
