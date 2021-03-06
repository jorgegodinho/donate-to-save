import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/svg/svg.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Line Line 17
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedLine17Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: -0.81,
        b: 0.58,
        c: -0.58,
        d: -0.81,
        child: Container(
          width: 279.6930236816406,
          height: 3.365036725997925,
          child: SvgWidget(painters: [
            SvgPathPainter.stroke(
              3.365036725997925,
              strokeJoin: StrokeJoin.miter,
            )
              ..addPath('M0 0L279.693 0L279.693 -3.36504L0 -3.36504L0 0Z')
              ..color = Color.fromARGB(76, 0, 0, 0),
          ]),
        ));
  }
}
