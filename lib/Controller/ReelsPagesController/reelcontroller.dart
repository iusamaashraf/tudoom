import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class ReelController extends GetxController {
  List messagecom = [
    'That Guy be like, “m isko nhi janta”',
    'Scamma’s goal deserved a better commentry. quality goal',
    'That Guy be like, “m isko nhi janta”'
  ];
  commentsheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            CustamContainer(
              wigth: 68,
              hight: 6,
              col: Colors.black,
              cir: 8,
            ),
            SizedBox(
              height: 10,
            ),
            Textcustam(
              text: 'Comments',
              size: 20,
              weight: FontWeight.w500,
            ),
            Divider(
              color: lightgray,
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 15, right: 15),
                      leading: CircleAvatar(),
                      title: Row(
                        children: [
                          Textcustam(
                            text: 'Vishal Tiwari',
                            col: Color(0xffD9D9D9),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Textcustam(
                            text: '8 Days Ago',
                            col: Color(0xffD9D9D9),
                          ),
                        ],
                      ),
                      subtitle: Textcustam(
                        text: messagecom[index],
                        size: 12,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 60,
                        ),
                        CustamContainer(
                            hight: 25,
                            wigth: 25,
                            cir: 7,
                            col: lightgray,
                            child: Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 12,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        CustamContainer(
                            hight: 25,
                            wigth: 25,
                            cir: 7,
                            col: lightgray,
                            child: Icon(
                              Icons.thumb_down_alt_outlined,
                              size: 12,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        CustamContainer(
                          hight: 25,
                          wigth: 25,
                          cir: 7,
                          col: lightgray,
                          child: SvgPicture.asset(Images.ms),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustamContainer(
                wigth: double.infinity,
                hight: 55,
                col: Color(0xffD9D9D9),
                cir: 15,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    SvgPicture.asset(Images.emoje),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Add Comment', border: InputBorder.none),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        );
      },
    );
  }

  shareSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustamContainer(
                    wigth: 60,
                    hight: 6,
                    col: Colors.black,
                    cir: 8,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Textcustam(
                  text: 'Save',
                  size: 19,
                  weight: FontWeight.w500,
                ),
                SizedBox(
                  height: 10,
                ),
                Textcustam(
                  text: 'Share',
                  size: 19,
                  weight: FontWeight.w500,
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    notInterested(context);
                  },
                  child: Textcustam(
                    text: 'Not Interested',
                    size: 19,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    reportSheet(context);
                  },
                  child: Textcustam(
                    text: 'Report',
                    size: 19,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  notInterested(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            CustamContainer(
              wigth: 63,
              hight: 6,
              col: Colors.black,
              cir: 8,
            ),
            SizedBox(
              height: 10,
            ),
            Textcustam(
              text: 'Why are you not interested?',
              size: 20,
              weight: FontWeight.w500,
            ),
            Divider(
              color: lightgray,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Textcustam(text: 'I see too many posts like this'),
                    SizedBox(
                      height: 15,
                    ),
                    Textcustam(text: 'Don’t suggest post with this audio'),
                    SizedBox(
                      height: 15,
                    ),
                    Textcustam(text: 'Don’t suggest posts from cinemaze'),
                    SizedBox(
                      height: 15,
                    ),
                    Textcustam(text: 'This topic dosen’t interest me'),
                    SizedBox(
                      height: 15,
                    ),
                    Textcustam(text: 'This post made me uncomfortable'),
                    SizedBox(
                      height: 10,
                    ),
                    Textcustam(text: 'Don’t suggest posts with certain words'),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }

  reportSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            CustamContainer(
              wigth: 63,
              hight: 6,
              col: Colors.black,
              cir: 8,
            ),
            SizedBox(
              height: 10,
            ),
            Textcustam(
              text: 'Report',
              size: 20,
              weight: FontWeight.w600,
            ),
            Divider(
              color: lightgray,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Textcustam(
                    text: 'Why are you reporting this?',
                    size: 18,
                    weight: FontWeight.w500,
                  ),
                  Textcustam(
                    text:
                        'Your report is anonymous, except if you’re reporting an intellectual property infringement. if someone is in immediate danger, call the local emergency services don’t wait.',
                    size: 12,
                    weight: FontWeight.w300,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Textcustam(
                    text: 'I just don’t like it',
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Textcustam(
                    text: 'It’s spam',
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Textcustam(
                    text: 'Nudity or sexual activity',
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Textcustam(
                    text: 'Hate speech or symbol',
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Textcustam(
                    text: 'False Information',
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Textcustam(
                    text: 'Scam or fraud',
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Textcustam(
                    text: 'Voilence or harassment',
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Textcustam(
                    text: 'Sucide or self-injury',
                    weight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
