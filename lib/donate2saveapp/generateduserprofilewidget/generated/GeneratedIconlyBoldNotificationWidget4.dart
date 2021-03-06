import 'package:flutter/material.dart';
import 'package:flutterapp/donate2saveapp/generatednotificationswidget/GeneratedNotificationsWidget.dart';
import 'package:flutterapp/donate2saveapp/generateduserprofilewidget/generated/GeneratedNotificationWidget8.dart';

/* Instance Iconly/Bold/Notification
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedIconlyBoldNotificationWidget4 extends StatelessWidget {

  final notifications;

  GeneratedIconlyBoldNotificationWidget4({Key key, this.notifications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => GeneratedNotificationsWidget(notifications: notifications))
        );
      },
      child: Container(
        width: 21.872737884521484,
        height: 21.872737884521484,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 3.1896893978118896,
                top: 1.8227685689926147,
                right: null,
                bottom: null,
                width: 15.49319076538086,
                height: 18.227264404296875,
                child: GeneratedNotificationWidget8(),
              )
            ]),
      ),
    );
  }
}
