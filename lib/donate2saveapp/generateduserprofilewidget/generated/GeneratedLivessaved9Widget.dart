import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../contract_linking.dart';

/* Text Lives saved: 9
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedLivessaved9Widget extends StatelessWidget {
  final livesSaved;

  GeneratedLivessaved9Widget({Key key,this.livesSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Align(
      alignment: Alignment.center,
      child: RichText(
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              height: 1.171874991143537,
              fontSize: 20.19021987915039,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 0, 0),

              /* letterSpacing: 0.0, */
            ),
            children: [
              TextSpan(
                text: 'Lives saved:  ',
                style: TextStyle(
                  fontSize: 12.618886947631836,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 0, 0, 0),

                  /* letterSpacing: null, */
                ),
              ),
              TextSpan(
                text: '$livesSaved',
                style: TextStyle(
                  fontSize: 18.50770378112793,
                  color: Color.fromARGB(255, 0, 0, 0),

                  /* letterSpacing: null, */
                ),
              )
            ],
          )),
    );
  }
}
