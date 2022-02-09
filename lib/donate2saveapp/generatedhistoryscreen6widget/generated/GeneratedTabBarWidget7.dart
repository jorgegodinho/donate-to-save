import 'package:flutter/material.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen6widget/generated/GeneratedMenuWidget22.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen6widget/generated/GeneratedMenuWidget21.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen6widget/generated/GeneratedMenuWidget23.dart';

/* Component Tab Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTabBarWidget7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 360.0589294433594,
        height: 76.5545883178711,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 196, 31, 38),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 120.0196533203125,
                height: 76.5545883178711,
                child: GeneratedMenuWidget21(),
              ),
              Positioned(
                left: 120.01969909667969,
                top: -0.00005397880158852786,
                right: null,
                bottom: null,
                width: 120.0196533203125,
                height: 76.5545883178711,
                child: GeneratedMenuWidget22(),
              ),
              Positioned(
                left: 240.03929138183594,
                top: 0.0,
                right: null,
                bottom: null,
                width: 120.0196533203125,
                height: 76.5545883178711,
                child: GeneratedMenuWidget23(),
              )
            ]),
      ),
    );
  }
}