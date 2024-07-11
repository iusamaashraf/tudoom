import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tudoom/View/Chatroom/chatroom.dart';
import 'package:tudoom/View/MainPages/homepage.dart';
import 'package:tudoom/View/Profile/profile.dart';
import 'package:tudoom/View/Search/search.dart';
import 'package:tudoom/View/TudoomWorld/tudoomworld.dart';
import 'package:tudoom/utils/images.dart';

class BottomAppBarCus extends StatefulWidget {
  @override
  _BottomBarCusState createState() => _BottomBarCusState();
}

class _BottomBarCusState extends State<BottomAppBarCus> {
  int selectedIndex = 0;

  final List<Widget> classes = [
    // HomeScreen(),
    HomePage(), Search(), TudoomWorld(), ChatRoomScreen(), ProfileScreen()
  ];

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: classes[selectedIndex],
      bottomNavigationBar: Container(
        height: 75,
        child: BottomAppBar(
            elevation: 0,
            // shadowColor: Colors.amber,
            padding: EdgeInsets.all(0),
            color: Color(0xff7D5BC7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildNavItem(
                      Images.homeicon,
                      Images.homefil,
                      0,
                    ),
                    buildNavItem(
                      Images.searchIcon,
                      Images.searchfil,
                      1,
                    ),
                    buildNavItem(
                      Images.likeicon,
                      Images.likefil,
                      2,
                    ),
                    buildNavItem(
                      Images.comment,
                      Images.commentfill,
                      3,
                    ),
                    buildNavItem(
                      Images.profileicon,
                      Images.profileicon,
                      4,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 6,
                  width: 154,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                ),
              ],
            )),
      ),
    );
  }

  Widget buildNavItem(
    String icon,
    String fillIcon,
    int index,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
            onTap: () => onTabTapped(index),
            child: selectedIndex == index
                ? SvgPicture.asset(fillIcon)
                : SvgPicture.asset(icon)),
        SizedBox(
          height: 10,
        ),
        selectedIndex == index
            ? Container(
                height: 1,
                width: 25,
                color: Colors.white,
              )
            : SizedBox(
                height: 1,
              ),
      ],
    );
  }
}
