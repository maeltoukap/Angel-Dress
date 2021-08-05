import 'file:///C:/Users/Mael/AndroidStudioProjects/angel_dress/lib/Others/login_screen.dart';
import 'package:angel_dress/Screens/home.dart';
import 'package:angel_dress/Screens/status_auth.dart';
import 'package:angel_dress/Services/auth_service.dart';
import 'package:angel_dress/Services/facebook_service.dart';
import 'package:angel_dress/widgets/API-row-button.dart';
import 'package:angel_dress/Services/google_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

import 'Others/login_screen.dart';
import 'Screens/Splash_screen/first_splash_screen.dart';

// import 'Screens/first_splash_screen.dart';
void main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode || kDebugMode)
      exit(1);
  };
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
    precacheImage(AssetImage('assets/mediamodifier-PKdcZz-o6bw-unsplash.jpg'), context);
    precacheImage(AssetImage('assets/4848498.jpg'), context);
    precacheImage(AssetImage('assets/4676729.jpg'), context);
    precacheImage(AssetImage('assets/494640.png'), context);
    //Mise en cache des images d'authentification
    precacheImage(AssetImage('assets/3071357.jpg'), context);
    precacheImage(AssetImage('assets/user.png'), context);
    precacheImage(AssetImage('assets/Form-background.png'), context);
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        // builder: (BuildContext context, Widget widget) {
        //   Widget error = Text('...Une erreur est survenue...');
        //   if (widget is Scaffold || widget is Navigator)
        //     error = Scaffold(body: Center(child: error));
        //   ErrorWidget.builder = (FlutterErrorDetails errorDetails) => error;
        //   return widget;
        // },
        debugShowCheckedModeBanner: false,
        title: 'Angel Dress',
        home: Statut(),
        // home: HomePage(),
        // home: LoginWithFacebook(),
        // home: ApiRowButton(),
        //   home: SplashScreen1(),
      ),
    );
  }
}
