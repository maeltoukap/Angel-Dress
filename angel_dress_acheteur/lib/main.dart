import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


import 'Interface/accueil.dart';

// Import the firebase_core plugin

void main() async{
  WidgetsFlutterBinding.ensureInitialized();  
  runApp(App());
}

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Set default `_initialized` and `_error` state to false
  //bool _initialized = false;
  //bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      Firebase.initializeApp();
      setState(() {
        //_initialized = true;
      });
    } catch(e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        //_error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }
  
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Accueil());
  }
}