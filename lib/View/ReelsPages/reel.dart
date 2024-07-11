import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ReelsPagesController/reelcontroller.dart';
import 'package:tudoom/View/ReelsPages/widgets/videoplayer_item.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class ReelsScreens extends StatelessWidget {
  final controller = Get.put(ReelController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 9,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            VideoPlayerItem(),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: Get.height * 0.4,
                width: Get.width * 0.2,
                //   color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustamContainer(
                        wigth: 48,
                        hight: 48,
                        col: lightgray,
                        cir: 15,
                        child: SvgPicture.asset(Images.Heart),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.shareSheet(context);
                        },
                        child: CustamContainer(
                          wigth: 48,
                          hight: 48,
                          col: lightgray,
                          cir: 15,
                          child: SvgPicture.asset(Images.Send),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.commentsheet(context);
                        },
                        child: CustamContainer(
                          wigth: 48,
                          hight: 48,
                          col: lightgray,
                          cir: 15,
                          child: SvgPicture.asset(Images.comments),
                        ),
                      ),
                      CustamContainer(
                          wigth: 48,
                          hight: 48,
                          col: lightgray,
                          cir: 15,
                          child: Icon(
                            Icons.more_vert,
                            size: 30,
                          )),
                      Container(
                        margin: EdgeInsets.only(bottom: 15, top: 10),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(2),
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(Images.post))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: Get.width * 0.8,
                // color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(Images.post),
                      ),
                      title: Textcustam(
                        text: 'animal.planet',
                        size: 18,
                        weight: FontWeight.w600,
                        col: white,
                      ),
                      subtitle: Textcustam(
                        text: 'Aliquet justo quam vestibulum ',
                        weight: FontWeight.w500,
                        size: 16,
                        col: white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: white,
                            ),
                            Textcustam(
                              text: ' 10 people',
                              size: 16,
                              weight: FontWeight.w500,
                              col: white,
                            ),
                          ],
                        ),
                        Textcustam(
                          text: 'Aliquet justo quam ',
                          col: white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 88,
              left: 35,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CustamContainer(
                    wigth: 40,
                    hight: 40,
                    col: lightgray,
                    cir: 20,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,

                      // size: 30,
                    )),
              ),
            ),
          ],
        );
      },
    ));
  }
}
