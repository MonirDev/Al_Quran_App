import 'package:Al_Quran_App/images.dart';
import 'package:flutter/material.dart';
import 'package:Al_Quran_App/strings.dart';

class GettingStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double maxHeight = (orientation == Orientation.portrait)
        ? MediaQuery.of(context).size.height
        : MediaQuery.of(context).size.width;
    (MediaQuery.of(context).size.height < 600)
        ? maxHeight = MediaQuery.of(context).size.height
        : maxHeight = maxHeight;
    double height = MediaQuery.of(context).size.height;
    double maxwidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
            body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: height * 0.15,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Quran App',
                  style: TextStyle(
                    fontSize: (maxHeight / 100) * 7,
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.15,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    Strings.hText,
                    style: TextStyle(
                      fontSize: (maxHeight / 100) * 3,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Image.asset(Images.introImg, height: 200, width: 600)
        // Container(
        //   height: height * 0.5,
        //   width: maxwidth,
        //   child: Stack(
        //     children: [
        //       Container(
        //         height: height * 0.6 - 27,
        //         child: ClipRRect(
        //             borderRadius: BorderRadius.circular(30.0),
        //             child: Image.asset(
        //               Images.introImg,
        //               width: maxwidth,
        //             )),
        //       )
        //     ],
        //   ),
        // ),
      ],
    )));
  }
}

// 0xFF03071e
