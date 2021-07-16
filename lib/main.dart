import 'package:flutter/material.dart';

import 'Screens/Splash_screen/first_splash_screen.dart';
// import 'Screens/first_splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //Mise en cache des images de demarrage
    precacheImage(AssetImage('assets/mediamodifier-PKdcZz-o6bw-unsplash.jpg'), context);
    precacheImage(AssetImage('assets/4848498.jpg'), context);
    precacheImage(AssetImage('assets/4676729.jpg'), context);
    precacheImage(AssetImage('assets/494640.png'), context);
    //Mise en cache des images d'authentification
    precacheImage(AssetImage('assets/3071357.jpg'), context);
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Splash Screen Images',
    home: FirstSplashScreen(),
    //   home: SplashScreen1(),
  );
  }
}
