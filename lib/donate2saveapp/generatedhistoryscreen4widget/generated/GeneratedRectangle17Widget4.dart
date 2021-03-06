import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:ui' as ui;

/* Rectangle Rectangle 17
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedRectangle17Widget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318.8371887207031,
      height: 84.9671859741211,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            kIsWeb
                ? SizedBox.shrink()
                : ClipRRect(
                    borderRadius: BorderRadius.zero,
                    child: SizedBox(
                        width: 318.8371887207031,
                        height: 84.9671859741211,
                        child: BackdropFilter(
                            filter: ui.ImageFilter.blur(
                              sigmaX: 1.6825183629989624,
                              sigmaY: 1.6825183629989624,
                            ),
                            child: Container(
                                color: Colors.black.withOpacity(0.0)))),
                  ),
            ClipRRect(
              borderRadius: BorderRadius.zero,
              child: Container(
                color: Color.fromARGB(33, 196, 196, 196),
              ),
            )
          ]),
    );
  }
}
