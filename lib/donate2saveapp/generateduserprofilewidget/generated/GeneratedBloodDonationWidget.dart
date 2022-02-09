import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../contract_linking.dart';

class GeneratedBloodDonationWidget extends StatelessWidget {
  final donation;

  GeneratedBloodDonationWidget({Key key, this.donation}) : super(key: key);

  String returnImageAsset() {

    if (donation[3] == BigInt.from(0))
      return "assets/images/4d7cf75c8b4319620d03d6e9a1f6b574fe2d058f.png";
    else if(donation[3] == BigInt.from(1))
      return "assets/images/a74628e9b3d62a6dd0d97eed3ed93a4e53fec4c9.png";
  }

  String checkIsUsed(value) {
    if (value)
      return "Used to save a life";
    else
      return "Not used yet";
  }

  String addZeroIfNeeded(i){
    if (i <= BigInt.from(9)) {
      return "0" + i.toString();
    }
    else
      return i.toString();
  }

  String getTime(time) {
    var hours = addZeroIfNeeded(time[0]);
    var minutes = addZeroIfNeeded(time[1]);

    return hours + ":" + minutes;
  }

  String getDate(date) {
    var day = addZeroIfNeeded(date[0]);
    var month = addZeroIfNeeded(date[1]);

    return day + "-" + month + "-" + date[2].toString();
  }

  @override
  Widget build(BuildContext context) {

    return Align(
      child: Container(
        height: 90,
        child: Card(
          color: Color.fromARGB(120, 255, 255, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Container(
                  width: 40.38044357299805,
                  height: 36.17414474487305,
                  child: ClipRRect(
                    borderRadius: BorderRadius.zero,
                    child: Image.asset(
                      returnImageAsset(),
                      color: null,
                      fit: BoxFit.cover,
                      width: 40.38044357299805,
                      height: 36.17414474487305,
                      colorBlendMode: BlendMode.dstATop,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                    '''Donation number ${donation[0]+BigInt.from(1)}
${getDate(donation[1])}       ${getTime(donation[2])}
${checkIsUsed(donation[4])}''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.1718749790665446,
                    fontSize: 18.50770378112793,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )
                ),
              ]),
            ),
          ]),
        ),
      )
    );
  }
}