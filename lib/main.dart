import 'package:angel_dress/Screens/login_screen.dart';
import 'package:angel_dress/Screens/status_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/login_screen.dart';
import 'Screens/Splash_screen/first_splash_screen.dart';

// import 'Screens/first_splash_screen.dart';
void main() async {
  //initialisation de Firebase au demarage de l'app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Mise en cache des images de demarrage
    precacheImage(
        AssetImage('assets/mediamodifier-PKdcZz-o6bw-unsplash.jpg'), context);
    precacheImage(AssetImage('assets/4848498.jpg'), context);
    precacheImage(AssetImage('assets/4676729.jpg'), context);
    precacheImage(AssetImage('assets/494640.png'), context);
    //Mise en cache des images d'authentification
    precacheImage(AssetImage('assets/3071357.jpg'), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      home: Statut(),
      //   home: SplashScreen1(),
    );
  }
}
