import 'package:angel_dress/Screens/Home.dart';
import 'login_screen.dart';
import 'package:angel_dress/Services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Statut extends StatefulWidget {

  @override
  _StatutState createState() => _StatutState();
}

class _StatutState extends State<Statut> {
  User user;
  AuthService auth = AuthService();
  Future<void> getUser() async {
    final userResult = await auth.user;
    setState(() {
      user = userResult;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    getUser();
    return user == null ? LoginPage() : HomePage();
  }
}
