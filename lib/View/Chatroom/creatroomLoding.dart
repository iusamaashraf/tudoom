import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tudoom/utils/AppCustam.dart';
import 'package:tudoom/utils/CustamWidget/textCustam.dart';

class CreateRommLoading extends StatefulWidget {
  @override
  State<CreateRommLoading> createState() => _CreateRommLoadingState();
}

class _CreateRommLoadingState extends State<CreateRommLoading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, "/ChatroomEnter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 260,
              width: 260,
              decoration: BoxDecoration(
                  border: Border.all(color: appColor), shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: appColor),
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: appColor),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: appColor),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: appColor, shape: BoxShape.circle),
                              child: Center(
                                child: Textcustam(
                                  align: TextAlign.center,
                                  text: 'Room Created',
                                  size: 40,
                                  weight: FontWeight.w700,
                                  col: white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
