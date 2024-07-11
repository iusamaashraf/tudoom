import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Model/tudoomModel.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamButton.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class TudoomStoreController extends GetxController {
  RxInt SelectBox = 1.obs;
  TextEditingController search = TextEditingController();
  List<String> selectedItems = [];

  sendGift(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  CustamContainer(
                    wigth: 50,
                    hight: 6,
                    cir: 5,
                    col: Colors.black,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textcustam(
                        text: 'Send to your friends',
                        size: 20,
                        weight: FontWeight.w600,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, "/FirendListSeeAll");
                        },
                        child: Text(
                          'See all',
                          style: TextStyle(color: grayCol),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: grayCol),
                    ),
                    child: TextField(
                      controller: search,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        helperStyle: TextStyle(color: lightgray),
                        hintText: 'Search username',
                        prefixText: '    ',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemCount: sendsGiftlist.length,
                      itemBuilder: (context, index) {
                        final friend = sendsGiftlist[index];
                        final lowerCaseSearch = search.text.toLowerCase();
                        final lowerCaseFriendText = friend.text.toLowerCase();
                        final isSearchEmpty = search.text.isEmpty;

                        if (isSearchEmpty ||
                            lowerCaseFriendText.contains(lowerCaseSearch)) {
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
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
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
                        } else {
                          return SizedBox.shrink();
                        }
                      },
                    ),
                  ),
                  Divider(
                    height: 0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RoundButton(
                    title: 'Send',
                    backcol: appColor,
                    fun: () {},
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  List<TudoomWorldModel> sendsGiftlist = [
    TudoomWorldModel(icon: Images.post, text: 'Adison Passaquindici Arcand'),
    TudoomWorldModel(icon: Images.firend1, text: 'Marcus Levin'),
    TudoomWorldModel(icon: Images.firend2, text: 'Cooper Franci'),
    TudoomWorldModel(icon: Images.firend3, text: 'Lincoln Philips'),
    TudoomWorldModel(icon: Images.firend4, text: 'Wilson Schleifer'),
    TudoomWorldModel(icon: Images.firend5, text: 'Jakob Siphron'),
    TudoomWorldModel(icon: Images.post, text: 'Emery Dias'),
    TudoomWorldModel(icon: Images.firend1, text: 'Kaiya Curtis'),
    TudoomWorldModel(icon: Images.firend2, text: 'Nolan Dorwart')
  ];
}
