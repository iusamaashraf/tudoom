// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:tudoom/Controller/homeController/shortsControler.dart';
// import 'package:tudoom/utils/AppCustam.dart';
// import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
// import 'package:tudoom/utils/CustamWidget/textCustam.dart';
// import 'package:tudoom/utils/images.dart';

// class Shorts extends StatelessWidget {
//   final controller = Get.put(ShortsControllers());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Container(
//               height: double.infinity,
//               width: double.infinity,
//               color: Colors.amber,
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SvgPicture.asset(Images.vice),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Icon(
//                         Icons.close_outlined,
//                         color: Colors.white,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 300,
//               left: 10,
//               child: CustamContainer(
//                 wigth: 40,
//                 hight: 50,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Textcustam(
//                       text: 'Aa',
//                       col: white,
//                       size: 16,
//                       weight: FontWeight.w700,
//                     ),
//                     SvgPicture.asset(Images.box)
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 10,
//               left: 7,
//               right: 3,
//               child: Container(
//                 height: Get.height * 0.08,
//                 width: double.infinity,
//                 color: Colors.red,
//                 child: Row(
//                   children: [
//                     SvgPicture.asset(Images.camera),
//                     SizedBox(
//                       width: 40,
//                     ),
//                     Expanded(
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: 10,
//                         itemBuilder: (context, index) {
//                           return Padding(
//                             padding: const EdgeInsets.only(right: 10),
//                             child: CircleAvatar(
//                               backgroundColor: grayCol,
//                             ),
//                           );
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         height: 80,
//         width: double.infinity,
//         color: white,
//         child: Obx(
//           () => SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 SizedBox(
//                   width: 7,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     controller.indexNo.value = 0;
//                   },
//                   child: CustamContainer(
//                     wigth: 80,
//                     hight: 35,
//                     borders: controller.indexNo == 0 ? false : true,
//                     bordercol: gray,
//                     col:
//                         controller.indexNo == 0 ? appColor : Colors.transparent,
//                     cir: 30,
//                     child: Textcustam(
//                         text: 'Post',
//                         weight: FontWeight.w600,
//                         col: controller.indexNo == 0 ? white : grayCol),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 7,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     controller.indexNo.value = 1;
//                   },
//                   child: CustamContainer(
//                     wigth: 80,
//                     hight: 35,
//                     borders: controller.indexNo == 1 ? false : true,
//                     cir: 30,
//                     col:
//                         controller.indexNo == 1 ? appColor : Colors.transparent,
//                     bordercol: gray,
//                     child: Textcustam(
//                       text: 'Short',
//                       weight: FontWeight.w600,
//                       col: controller.indexNo == 1 ? white : grayCol,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 7,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     controller.indexNo.value = 2;
//                   },
//                   child: CustamContainer(
//                     wigth: 80,
//                     hight: 35,
//                     borders: controller.indexNo == 2 ? false : true,
//                     cir: 30,
//                     col:
//                         controller.indexNo == 2 ? appColor : Colors.transparent,
//                     bordercol: gray,
//                     child: Textcustam(
//                       text: 'Story',
//                       weight: FontWeight.w600,
//                       col: controller.indexNo == 2 ? white : grayCol,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 7,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     controller.indexNo.value = 3;
//                   },
//                   child: CustamContainer(
//                     wigth: 80,
//                     hight: 35,
//                     borders: controller.indexNo == 3 ? false : true,
//                     cir: 30,
//                     col:
//                         controller.indexNo == 3 ? appColor : Colors.transparent,
//                     bordercol: gray,
//                     child: Textcustam(
//                       text: 'Live',
//                       weight: FontWeight.w600,
//                       col: controller.indexNo == 3 ? white : grayCol,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:tudoom/Controller/homeController/shortsControler.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class Shorts extends StatelessWidget {
  final controller = Get.put(ShortsControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.grey.shade400,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    SvgPicture.asset(Images.vice),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 10,
              child: CustamContainer(
                wigth: 40,
                hight: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textcustam(
                      text: 'Aa',
                      col: white,
                      size: 16,
                      weight: FontWeight.w700,
                    ),
                    SvgPicture.asset(Images.box)
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 7,
              right: 3,
              child: Container(
                height: Get.height * 0.1,
                width: double.infinity,
                //   color: Colors.red,
                child: Row(
                  children: [
                    SvgPicture.asset(Images.camera),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: ScrollSnapList(
                        onItemFocus: (index) {
                          index = index;
                        },
                        itemSize: 35,
                        itemBuilder: (context, index) {
                          // Check if the index is the first one
                          if (index == 0) {
                            return Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: white)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                            );
                          } else {
                            // For other indices, return normal CircleAvatar
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.grey,
                              ),
                            );
                          }
                        },
                        itemCount: 10, // Update with your actual item count
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        color: white,
        child: Obx(
          () => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: () {
                    controller.indexNo.value = 0;
                  },
                  child: CustamContainer(
                    wigth: 80,
                    hight: 35,
                    borders: controller.indexNo == 0 ? false : true,
                    bordercol: gray,
                    col:
                        controller.indexNo == 0 ? appColor : Colors.transparent,
                    cir: 30,
                    child: Textcustam(
                        text: 'Post',
                        weight: FontWeight.w600,
                        col: controller.indexNo == 0 ? white : grayCol),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: () {
                    controller.indexNo.value = 1;
                  },
                  child: CustamContainer(
                    wigth: 80,
                    hight: 35,
                    borders: controller.indexNo == 1 ? false : true,
                    cir: 30,
                    col:
                        controller.indexNo == 1 ? appColor : Colors.transparent,
                    bordercol: gray,
                    child: Textcustam(
                      text: 'Short',
                      weight: FontWeight.w600,
                      col: controller.indexNo == 1 ? white : grayCol,
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: () {
                    controller.indexNo.value = 2;
                  },
                  child: CustamContainer(
                    wigth: 80,
                    hight: 35,
                    borders: controller.indexNo == 2 ? false : true,
                    cir: 30,
                    col:
                        controller.indexNo == 2 ? appColor : Colors.transparent,
                    bordercol: gray,
                    child: Textcustam(
                      text: 'Story',
                      weight: FontWeight.w600,
                      col: controller.indexNo == 2 ? white : grayCol,
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: () {
                    controller.indexNo.value = 3;
                  },
                  child: CustamContainer(
                    wigth: 80,
                    hight: 35,
                    borders: controller.indexNo == 3 ? false : true,
                    cir: 30,
                    col:
                        controller.indexNo == 3 ? appColor : Colors.transparent,
                    bordercol: gray,
                    child: Textcustam(
                      text: 'Live',
                      weight: FontWeight.w600,
                      col: controller.indexNo == 3 ? white : grayCol,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
