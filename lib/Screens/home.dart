import 'package:angel_dress/Model/User.dart';
import 'package:angel_dress/Services/db.dart';
import 'package:angel_dress/Services/facebook_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Services/auth_service.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserM userm;
  final userg = FirebaseAuth.instance.currentUser;
  // final userf = logg().isLoggedIn;
  // final facebookCredentials = logg().userDetails;
  AuthService auth = AuthService();
  // Future<bool> getUser() async {
  //   User user = await auth.user;
  //   try {
  //     var userResult = await DBServices().getUser(user.uid);
  //     return userResult != null ? true : false;
  //   } catch (e) {
  //     print(e);
  //     return false;
  //   }
  // }
  // Future<void> getUser() async {
  //   User user = await auth.user;
  //   final userResult = await DBServices().getUser(user.uid);
  //   setState(() {
  //     userm = userResult;
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // if (userm != null || userm != false) getUser();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
              icon: Icon(FontAwesomeIcons.signOutAlt),
              onPressed: () async {
                await auth.signOut();
                setState(() {
                  
                });
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (userm != null) Text("Bienvenu cher"),
            if (userm != null) Text("uid: " + userm.id),
            if (userm != null) Text("email: " + userm.email),
            if (userm != null) Text("username: " + userm.username),
            if (userm != null) Text("phone: " + userm.phone.toString()),

            // google signin
            if (userg != null) CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(userg.photoURL),
            ),
            if (userg != null)SizedBox(height: 8),
            if (userg != null) Text(
              'Name: ' + userg.displayName,
              style: TextStyle(fontSize: 16),
            ),
            // if (facebookCredentials != null) Image.network(
            //   facebookCredentials["picture"]["data"]["url"],
            //       height: 50.0,
            //       width: 50.0,
            //     ),
            // if (facebookCredentials != null) Text("facebookCredentials")
            // Text(userf["name"]),
              // style: TextStyle(fontSize: 16),
            // ),
            if (userg != null) SizedBox(height: 8),
            if (userg != null) Text(
              'Email: ' + userg.email,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
