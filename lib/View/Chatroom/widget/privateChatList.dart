import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ChatRoomControllers.dart/chatcontroller.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class PrivateChatList extends StatelessWidget {
  final controller = Get.put(ChatRoomController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.PrivateChatPerson.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/PrivateChat");
            },
            child: CustamContainer(
              wigth: double.infinity,
              hight: 100,
              borders: true,
              bordercol: lightgray,
              cir: 20,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage:
                      AssetImage(controller.PrivateChatPerson[index].icon),
                ),
                title: Textcustam(
                  text: controller.PrivateChatPerson[index].text,
                  weight: FontWeight.w600,
                ),
                subtitle: Text(
                  'Sorry i’ll bw late about...',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Textcustam(text: 'Just Now'),
                    CustamContainer(
                      wigth: 16,
                      hight: 16,
                      cir: 4,
                      borders: true,
                      bordercol: Colors.black,
                      child: Textcustam(
                        text: '3',
                        weight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
