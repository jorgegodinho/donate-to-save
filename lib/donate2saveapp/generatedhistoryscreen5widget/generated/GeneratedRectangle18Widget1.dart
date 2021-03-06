import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

/* Rectangle Rectangle 18
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedRectangle18Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/GeneratedHistoryScreen1Widget'),
      child: Container(
        width: 318.8371887207031,
        height: 84.9671859741211,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.825183868408203),
          border: Border.all(
            width: 0.8412591814994812,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          boxShadow: kIsWeb
              ? []
              : [
                  BoxShadow(
                    color: Color.fromARGB(63, 0, 0, 0),
                    offset: Offset(0.0, 3.365036725997925),
                    blurRadius: 3.365036725997925,
                  )
                ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.825183868408203),
          child: Container(
            color: Color.fromARGB(33, 196, 196, 196),
          ),
        ),
      ),
    );
  }
}
