import 'package:flutter/material.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedRectangle52Widget4.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedRectangle53Widget4.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedStatusBarWidget4.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedChevronWidget5.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedIconlyBoldNotificationWidget4.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedLogo3Widget4.dart';

/* Component Our Status Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedOurStatusBarWidget4 extends StatelessWidget {

  final notifications;

  GeneratedOurStatusBarWidget4({Key key, this.notifications}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0589294433594,
      height: 76.5545883178711,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 21.872716903686523,
              top: 0.000023115324438549578,
              right: null,
              bottom: null,
              width: 315.4721984863281,
              height: 76.5545883178711,
              child: GeneratedStatusBarWidget4(),
            ),
            Positioned(
              left: -0.000053016399760963395,
              top: 0.00000854448171594413,
              right: null,
              bottom: null,
              width: 22.713998794555664,
              height: 76.5545883178711,
              child: GeneratedRectangle52Widget4(),
            ),
            Positioned(
              left: 156.47430419921875,
              top: 31.967857360839844,
              right: null,
              bottom: null,
              width: 47.11051559448242,
              height: 39.539188385009766,
              child: GeneratedLogo3Widget4(),
            ),
            Positioned(
              left: 329.773681640625,
              top: 0.000023115324438549578,
              right: null,
              bottom: null,
              width: 30.28533363342285,
              height: 76.5545883178711,
              child: GeneratedRectangle53Widget4(),
            ),
            Positioned(
              left: 23.55525016784668,
              top: 44.58679962158203,
              right: null,
              bottom: null,
              width: 6.73007345199585,
              height: 13.4601469039917,
              child: GeneratedChevronWidget5(),
            ),
            Positioned(
              left: 312.948486328125,
              top: 40.38052749633789,
              right: null,
              bottom: null,
              width: 21.872737884521484,
              height: 21.872737884521484,
              child: GeneratedIconlyBoldNotificationWidget4(notifications: notifications),
            )
          ]),
    );
  }
}