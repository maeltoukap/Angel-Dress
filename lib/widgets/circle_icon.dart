import 'package:angel_dress/Functions/Splash_screen/const.dart';
import 'package:angel_dress/Model/User.dart';
import 'package:angel_dress/Services/db.dart';
import 'package:angel_dress/Services/facebook_service.dart';
import 'package:angel_dress/widgets/circle_icon.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Services/auth_service.dart';


class CircleIcons extends StatelessWidget {
  CircleIcons({
    Key key,
    @required this.icon,
    @required this.onPressed,
    // @required this.IconColors,
    @required this.CircleColors
  }) : super(key: key);

  final Icon icon;
  final onPressed;
  // final Color IconColors;
  final Color CircleColors;
  AuthService auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: CircleColors,

      child: IconButton(
        // icon: Icon(FontAwesomeIcons.signOutAlt),
          icon: icon,
          // color: IconColors,
          onPressed: onPressed
      ),
    );
  }
}
