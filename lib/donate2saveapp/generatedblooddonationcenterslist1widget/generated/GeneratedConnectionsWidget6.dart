import 'package:flutter/material.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterslist1widget/generated/GeneratedCellularConnectionWidget12.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterslist1widget/generated/GeneratedBatteryWidget6.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterslist1widget/generated/GeneratedWifiWidget12.dart';

/* Frame Connections
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedConnectionsWidget6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57.205623626708984,
      height: 13.4601469039917,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 36.17417907714844,
              top: 1.6825249195098877,
              right: null,
              bottom: null,
              width: 21.031478881835938,
              height: 10.095109939575195,
              child: GeneratedBatteryWidget6(),
            ),
            Positioned(
              left: 16.825218200683594,
              top: 0.8412656784057617,
              right: null,
              bottom: null,
              width: 17.66644287109375,
              height: 12.618887901306152,
              child: GeneratedWifiWidget12(),
            ),
            Positioned(
              left: 0.00003518465382512659,
              top: 1.6825249195098877,
              right: null,
              bottom: null,
              width: 15.142664909362793,
              height: 10.095109939575195,
              child: GeneratedCellularConnectionWidget12(),
            )
          ]),
    );
  }
}
