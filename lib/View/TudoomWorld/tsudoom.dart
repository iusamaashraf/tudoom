import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tudoom/Controller/TudoomWorldController/tudoomController.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/custamContainer.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';
import 'package:tudoom/utils/images.dart';

class TudoomWorldAnything extends StatelessWidget {
  final controller = Get.put(TudoomWorldController());

  List<String> classOpen = [
    "/Officialss",
    "/SellerProfile",
    "/SellersClass",
    "/TranderPanel"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
        backgroundColor: appColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: white,
                )),
            Textcustam(
              text: 'Tudoom  World ',
              size: 20,
              weight: FontWeight.w600,
              col: white,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Textcustam(
                          text: 'Search Anything',
                          size: 20,
                          weight: FontWeight.w600,
                        ),
                        SvgPicture.asset(
                          Images.searchIcon,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.tudoomitem2nd.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 15.0,
                          crossAxisSpacing: 15.0,
                          mainAxisExtent: 110),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, classOpen[index]);
                          },
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: lightgray,
                                    radius: 30,
                                    child: SvgPicture.asset(
                                        controller.tudoomitem2nd[index].icon),
                                  ),
                                  index == 5
                                      ? Positioned(
                                          right: 2,
                                          top: 12,
                                          child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Colors.green,
                                          ),
                                        )
                                      : SizedBox()
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${controller.tudoomitem2nd[index].text}',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Textcustam(
                          text: 'Prome & Discount',
                          size: 20,
                          weight: FontWeight.w600,
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.pagecon.nextPage(
                                duration: Duration(seconds: 2),
                                curve: Curves.linear);
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            color: appColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                height: 195,
                child: PageView.builder(
                  itemCount: 3,
                  controller: controller.pagecon,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustamContainer(
                        wigth: double.infinity,
                        hight: 190,
                        col: Color(0xff0E243A),
                        cir: 15,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 150,
                                  //  color: Colors.amber,
                                  child: RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700),
                                          children: [
                                        TextSpan(
                                            text: 'Dataya \nəsaslanaraq\n',
                                            style: TextStyle(color: white)),
                                        TextSpan(
                                            text: 'ağıllı qərarlar',
                                            style:
                                                TextStyle(color: Colors.green)),
                                        TextSpan(
                                            text: '  verin',
                                            style: TextStyle(color: white)),
                                      ]))),
                              Image.asset(Images.searchPerson)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: controller.pagecon,
                count: 3,
                effect: WormEffect(
                    spacing: 8.0,
                    radius: 4.0,
                    dotWidth: 17.0,
                    dotHeight: 8.0,
                    dotColor: lightgray,
                    activeDotColor: appColor),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
// 'Dataya əsaslanaraq ağıllı qərarlar verin'
