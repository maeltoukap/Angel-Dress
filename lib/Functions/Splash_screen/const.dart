import 'package:angel_dress/Screens/log_or_sign.dart';
import '../../Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Appel des screen du splashscreen
import '../../Screens/Splash_screen/third_splash_screen.dart';
import 'package:angel_dress/Screens/Splash_screen/fourth_splash_screen.dart';
import '../../Screens/inscription_screen.dart';
import '../../Others/insc_screen.dart';
import '../../Screens/log_or_sign.dart';
import '../../Others/login_screen.dart';

// Colors
const SplashbgColor = 0xff000000;
const Color firstColor = Color(0xffff6404);
const Color MainColor = Color(0xffff6404);//orange
// const SplashbgColor = Colors.white;
// const textColor = 0xffdb7032;
const textColor = 0xffffffff;
const skipStyle = TextStyle(
  color: Colors.blueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);

const messagesGreen = TextStyle(
  fontSize: 18,
  color: Colors.green,
);
//Header des formulaires
var kHeading = GoogleFonts.montserrat(
  fontSize: 35,
  // fontWeight: FontWeight.bold,
  color: Color(textColor),
);
var  kBodyText = GoogleFonts.montserrat(
  fontSize: 22,
  color: Colors.white,
);
const TextStyle smallkBodyText = TextStyle(
  fontSize: 18,
  color: Colors.white,
);

// Naigators
class MyNavigator {
  static void thirdSplashScreenNavigator(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return ThirdSplashScreen();
        },
      ),
    );
  }
  static void fourthSplashScreenNavigator(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return FourthSplashScreen();
        },
      ),
    );
  }
  static void loginScreenNavigator(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return LoginPage();
        },
      ),
    );
  }
  static void signinScreenNavigator(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          // return inscPAge();
          return Inscription();
        },
      ),
    );
  }
}
