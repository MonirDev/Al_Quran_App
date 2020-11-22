import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: size,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: size * 0.7,
                child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Image.asset('assets/images/bismillahG.png')))),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: SpinKitFoldingCube(
                color: Colors.lightGreen,
                size: 80.0,
              ),
            )
          ],
        ),
      )),
    );
  }
}
