import 'package:flutter/material.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterdetails4widget/generated/GeneratedCellularConnectionWidget46.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterdetails4widget/generated/GeneratedBatteryWidget23.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterdetails4widget/generated/GeneratedWifiWidget46.dart';

/* Frame Connections
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedConnectionsWidget23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57.20562744140625,
      height: 13.4601469039917,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 36.17423629760742,
              top: 1.6825106143951416,
              right: null,
              bottom: null,
              width: 21.031478881835938,
              height: 10.095110893249512,
              child: GeneratedBatteryWidget23(),
            ),
            Positioned(
              left: 16.825101852416992,
              top: 0.8412438035011292,
              right: null,
              bottom: null,
              width: 17.666444778442383,
              height: 12.618887901306152,
              child: GeneratedWifiWidget46(),
            ),
            Positioned(
              left: 0.000008375385732506402,
              top: 1.6825106143951416,
              right: null,
              bottom: null,
              width: 15.142666816711426,
              height: 10.095110893249512,
              child: GeneratedCellularConnectionWidget46(),
            )
          ]),
    );
  }
}
