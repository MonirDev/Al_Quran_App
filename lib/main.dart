import 'dart:async';
import 'package:Al_Quran_App/images.dart';
import 'package:Al_Quran_App/pages/home.dart';
import 'package:Al_Quran_App/pages/intro_pages/gettingStarted.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String userInfo;
  getUserinfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    userInfo = prefs.getString('name');
    return userInfo;
  }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    (userInfo == null) ? GettingStarted() : Homepage())));
  }

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: maxHeight,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: (orientation == Orientation.portrait)
                    ? maxHeight * 0.7
                    : maxHeight * 0.5,
                child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 40.0),
                        child: Image.asset(Images.bismillahImg)))),
            Container(
              height: (orientation == Orientation.portrait)
                  ? maxHeight * 0.2
                  : maxHeight * 0.4,
              child: Align(
                alignment: Alignment.topCenter,
                child: SpinKitFoldingCube(
                  color: Colors.lightGreen,
                  size: 70.0,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
