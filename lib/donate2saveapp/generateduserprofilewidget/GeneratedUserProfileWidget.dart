
import 'package:flutter/material.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedLivessaved9Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedRectangle16Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedSecondiconsgoldmedalWidget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedRectangle14Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedEditprofileWidget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedRectangle15Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedOurStatusBarWidget4.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedMafaldaAntunesWidget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedImage24Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedSecondiconsblooddonationWidget.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedTabBarWidget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedSecondiconsclipboardWidget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedSecondiconsdonorcardmenWidget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedRectangle17Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedChevronWidget4.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedElegibilitytodonate19032022Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedBloodtypeAWidget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedRectangle12Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedHistoryWidget.dart';
import 'package:provider/provider.dart';

import '../../contract_linking.dart';

/* Frame User Profile
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedUserProfileWidget extends StatefulWidget {
  _GeneratedUserProfileWidgetState createState() => _GeneratedUserProfileWidgetState();
}

class _GeneratedUserProfileWidgetState extends State<GeneratedUserProfileWidget> {

  var livesSaved = BigInt.from(0);
  var availability;
  var availabilityDay = BigInt.from(1);
  var availabilityMonth = BigInt.from(1);
  var availabilityYear = BigInt.from(2018);
  var bloodDonations;
  var preferedPlace;
  var contractLink;
  var notifications;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000)).then((value) async{
      var contract = Provider.of<ContractLinking>(context, listen: false);
      var result = await contract.readContract(contract.getBloodDonations, []);
      bloodDonations = result[0];

      result = await contract.readContract(contract.getpreferedPlace, []);
      preferedPlace = result[0];

      result = await contract.readContract(contract.getNotifications, []);
      notifications = result[0];
      debugPrint(notifications.toString());

      result = await contract.readContract(contract.getLivesSaved, []);
      livesSaved = result[0];
      debugPrint(livesSaved.toString());

      result = await contract.readContract(contract.getAvailability, []);
      availability = result[0];
      availabilityDay = availability[0];
      availabilityMonth = availability[1];
      availabilityYear = availability[2];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var contractLink = Provider.of<ContractLinking>(context);

    return Material(
        child: Container(
      decoration: BoxDecoration(
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
        borderRadius: BorderRadius.zero,
        child: Container(
          width: 360.0589294433594,
          height: 779.0060424804688,
          child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
            ClipRRect(
              borderRadius: BorderRadius.zero,
              child: Container(
                color: Color.fromARGB(255, 246, 247, 248),
              ),
            ),
            Positioned(
              left: 15.142704010009766,
              top: 378.5668029785156,
              right: null,
              bottom: null,
              width: 153.1091766357422,
              height: 124.50636291503906,
              child: GeneratedRectangle14Widget(),
            ),
            Positioned(
              left: 15.142704010009766,
              top: 526.62841796875,
              right: null,
              bottom: null,
              width: 329.77362060546875,
              height: 68.98326110839844,
              child: GeneratedRectangle16Widget(),
            ),
            Positioned(
              left: 15.142704010009766,
              top: 610.75439453125,
              right: null,
              bottom: null,
              width: 329.77362060546875,
              height: 68.98326110839844,
              child: GeneratedRectangle17Widget(bloodDonations: bloodDonations, preferedPlace: preferedPlace),
            ),
            Positioned(
              left: 191.80715942382812,
              top: 378.5668029785156,
              right: null,
              bottom: null,
              width: 153.1091766357422,
              height: 124.50636291503906,
              child: GeneratedRectangle15Widget(),
            ),
            Positioned(
              left: 0.00002300463711435441,
              top: 76.55463409423828,
              right: null,
              bottom: null,
              width: 360.0589294433594,
              height: 280.9805908203125,
              child: GeneratedRectangle12Widget(),
            ),
            Positioned(
              left: 123.66502380371094,
              top: 298.6470642089844,
              right: null,
              bottom: null,
              width: 129.87139892578125,
              height: 49.11051559448242,
              child: GeneratedBloodtypeAWidget(),
            ),
            Positioned(
              left: 106.83993530273438,
              top: 114.41133880615234,
              right: null,
              bottom: null,
              width: 147.22035217285156,
              height: 141.33155822753906,
              child: GestureDetector(
                child: GeneratedImage24Widget(),
              ),
            ),
            Positioned(
              left: 98.4275131225586,
              top: 259.1080017089844,
              right: null,
              bottom: null,
              width: 165.20428466796875,
              height: 49.11051559448242,
              child: GeneratedMafaldaAntunesWidget(),
            ),
            Positioned(
              left: 49.6343994140625,
              top: 440.8199462890625,
              right: null,
              bottom: null,
              width: 84.44340515136719,
              height: 55.8405876159668,
              child: GeneratedLivessaved9Widget(livesSaved: livesSaved),
            ),
            Positioned(
              left: 204.42604064941406,
              top: 440.8199462890625,
              right: null,
              bottom: null,
              width: 131.55393981933594,
              height: 49.11051559448242,
              child: GeneratedElegibilitytodonate19032022Widget(availabilityDay: availabilityDay, availabilityMonth: availabilityMonth, availabilityYear: availabilityYear),
            ),
            Positioned(
              left: 135.44264221191406,
              top: 538.4060668945312,
              right: null,
              bottom: null,
              width: 106.3161392211914,
              height: 49.11051559448242,
              child: GeneratedEditprofileWidget(),
            ),
            Positioned(
              left: 151.4267120361328,
              top: 621.6906127929688,
              right: null,
              bottom: null,
              width: 84.91962432861328,
              height: 52.11051559448242,
              child: GeneratedHistoryWidget(bloodDonations: bloodDonations, preferedPlace: preferedPlace),
            ),
            Positioned(
              left: 17.6663818359375,
              top: 54.682003021240234,
              right: null,
              bottom: null,
              width: 5.888814449310303,
              height: 10.936369895935059,
              child: GeneratedChevronWidget4(),
            ),
            Positioned(
              left: 251.53648376464844,
              top: 392.0268249511719,
              right: null,
              bottom: null,
              width: 42.062957763671875,
              height: 42.062957763671875,
              child: GeneratedSecondiconsblooddonationWidget(),
            ),
            Positioned(
              left: 74.87203979492188,
              top: 393.7093505859375,
              right: null,
              bottom: null,
              width: 33.650367736816406,
              height: 40.38044357299805,
              child: GeneratedSecondiconsgoldmedalWidget(),
            ),
            Positioned(
              left: 40.38046646118164,
              top: 535.0408325195312,
              right: null,
              bottom: null,
              width: 54.681846618652344,
              height: 50.47555160522461,
              child: GeneratedSecondiconsdonorcardmenWidget(),
            ),
            Positioned(
              left: 38.697933197021484,
              top: 669.642333984375,
              right: null,
              bottom: null,
              width: 50.47555160522461,
              height: 52.99932861328125,
              child: GeneratedSecondiconsclipboardWidget(),
            ),
            Positioned(
              left: 0.00002300463711435441,
              top: 702.4514770507812,
              right: null,
              bottom: null,
              width: 360.0589294433594,
              height: 76.5545883178711,
              child: GeneratedTabBarWidget(),
            ),
            Positioned(
              left: 0.00002920700717368163,
              top: 0.00001797354343580082,
              right: null,
              bottom: null,
              width: 360.0589294433594,
              height: 76.5545883178711,
              child: GeneratedOurStatusBarWidget4(notifications: notifications),
            )
          ]),
        ),
      ),
    ));
  }
}
