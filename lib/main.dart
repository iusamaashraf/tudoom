import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tudoom/Routes/routing.dart';
import 'package:tudoom/View/RegisterUser/login.dart';
import 'package:device_preview/device_preview.dart';

//  Start Date 20 Feb
//
//  https://www.figma.com/file/ahEomR3pz4HjDNnWepw56j/tudoom-2?type=design&node-id=472-2104&mode=design&t=ChPiVSSUrPGoPedo-0

//   version   3.19.3
// void main() {
//   SystemChrome.setSystemUIOverlayStyle(
//     SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.dark,
//     ),
//   );
//   runApp(MyApp());
// }

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  final Routes nameroute = Routes();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tudoom',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: nameroute.onGenerateRoute,
      home: LoginScreen(),
      //  debugShowCheckedModeBanner: false,
    );
  }
}
