import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterapp/donate2saveapp/generatedintro2widget/GeneratedIntro2Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedintro1widget/GeneratedIntro1Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedintro3widget/GeneratedIntro3Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedintro4widget/GeneratedIntro4Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/GeneratedUserProfileWidget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofile2widget/GeneratedUserProfile2Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterslist1widget/GeneratedBloodDonationCentersList1Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterslist2widget/GeneratedBloodDonationCentersList2Widget.dart';
import 'package:flutterapp/donate2saveapp/generatednotificationswidget/GeneratedNotificationsWidget.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen8widget/GeneratedHistoryScreen8Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen7widget/GeneratedHistoryScreen7Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen6widget/GeneratedHistoryScreen6Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen5widget/GeneratedHistoryScreen5Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen4widget/GeneratedHistoryScreen4Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen3widget/GeneratedHistoryScreen3Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen2widget/GeneratedHistoryScreen2Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedhistoryscreen1widget/GeneratedHistoryScreen1Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedinitialpage2widget/GeneratedInitialPage2Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedinitialpagewidget/GeneratedInitialPageWidget.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterdetails6widget/GeneratedBloodDonationCenterDetails6Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterdetails5widget/GeneratedBloodDonationCenterDetails5Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterdetails4widget/GeneratedBloodDonationCenterDetails4Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterdetails3widget/GeneratedBloodDonationCenterDetails3Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterdetails2widget/GeneratedBloodDonationCenterDetails2Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterdetails1widget/GeneratedBloodDonationCenterDetails1Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserandbloodcenterslocation2widget/GeneratedUserandBloodCentersLocation2Widget.dart';
import 'package:flutterapp/donate2saveapp/generateduserandbloodcenterslocation1widget/GeneratedUserandBloodCentersLocation1Widget.dart';
import 'package:flutterapp/donate2saveapp/generatedblooddonationcenterslist3widget/GeneratedBloodDonationCentersList3Widget.dart';

import 'contract_linking.dart';

void main() {
  runApp(Donate2SaveApp());
}

class Donate2SaveApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContractLinking>(
      create: (_) => ContractLinking(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/GeneratedIntro1Widget',
        routes: {
          '/GeneratedIntro2Widget': (context) => GeneratedIntro2Widget(),
          '/GeneratedIntro1Widget': (context) => GeneratedIntro1Widget(),
          '/GeneratedIntro3Widget': (context) => GeneratedIntro3Widget(),
          '/GeneratedIntro4Widget': (context) => GeneratedIntro4Widget(),
          '/GeneratedUserProfileWidget': (context) => GeneratedUserProfileWidget(),
          '/GeneratedUserProfile2Widget': (context) => GeneratedUserProfile2Widget(),
          '/GeneratedBloodDonationCentersList1Widget': (context) => GeneratedBloodDonationCentersList1Widget(),
          '/GeneratedBloodDonationCentersList2Widget': (context) => GeneratedBloodDonationCentersList2Widget(),
          '/GeneratedNotificationsWidget': (context) => GeneratedNotificationsWidget(),
          '/GeneratedHistoryScreen8Widget': (context) => GeneratedHistoryScreen8Widget(),
          '/GeneratedHistoryScreen7Widget': (context) => GeneratedHistoryScreen7Widget(),
          '/GeneratedHistoryScreen6Widget': (context) => GeneratedHistoryScreen6Widget(),
          '/GeneratedHistoryScreen5Widget': (context) => GeneratedHistoryScreen5Widget(),
          '/GeneratedHistoryScreen4Widget': (context) => GeneratedHistoryScreen4Widget(),
          '/GeneratedHistoryScreen3Widget': (context) => GeneratedHistoryScreen3Widget(),
          '/GeneratedHistoryScreen2Widget': (context) => GeneratedHistoryScreen2Widget(),
          '/GeneratedHistoryScreen1Widget': (context) => GeneratedHistoryScreen1Widget(),
          '/GeneratedInitialPage2Widget': (context) => GeneratedInitialPage2Widget(),
          '/GeneratedInitialPageWidget': (context) => GeneratedInitialPageWidget(),
          '/GeneratedBloodDonationCenterDetails6Widget': (context) => GeneratedBloodDonationCenterDetails6Widget(),
          '/GeneratedBloodDonationCenterDetails5Widget': (context) => GeneratedBloodDonationCenterDetails5Widget(),
          '/GeneratedBloodDonationCenterDetails4Widget': (context) => GeneratedBloodDonationCenterDetails4Widget(),
          '/GeneratedBloodDonationCenterDetails3Widget': (context) => GeneratedBloodDonationCenterDetails3Widget(),
          '/GeneratedBloodDonationCenterDetails2Widget': (context) => GeneratedBloodDonationCenterDetails2Widget(),
          '/GeneratedBloodDonationCenterDetails1Widget': (context) => GeneratedBloodDonationCenterDetails1Widget(),
          '/GeneratedUserandBloodCentersLocation2Widget': (context) => GeneratedUserandBloodCentersLocation2Widget(),
          '/GeneratedUserandBloodCentersLocation1Widget': (context) => GeneratedUserandBloodCentersLocation1Widget(),
          '/GeneratedBloodDonationCentersList3Widget': (context) => GeneratedBloodDonationCentersList3Widget(),
        },
      ),
    );
  }
}
