import 'package:angel_dress/ressources/fonctions.dart';
import 'package:angel_dress/screens/new_product.dart';
import 'package:flutter/material.dart';
import 'screens/Sender_profile.dart';
import 'screens/panier.dart';
import 'screens/add_article.dart';
import 'screens/vendeur.dart';
import 'screens/ajout_article.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Angel Dress',
      // home: Login(),
      home:PanierScreen(),
      // home: RegisterScreen(),
    );
  }
}
