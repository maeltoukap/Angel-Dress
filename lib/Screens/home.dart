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
  final userf = LoginWithFacebook().user;
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
  Future<void> getUser() async {
    User user = await auth.user;
    final userResult = await DBServices().getUser(user.uid);
    setState(() {
      if (userResult != false) userm = userResult;
    });
  }
  //  AUser(){
  //   if(userm != null && userg != null) {
  //     SizedBox(height: 8);
  //     Text("Bienvenu cher");
  //     Text("uid: " + userm.id);
  //     Text("email: " + userm.email);
  //     Text("name: " + userm.name);
  //     Text("username: " + userm.username);
  //     Text("phone: " + userm.phone.toString());
  //   }else if(userg == null){
  //     SizedBox(height: 8);
  //     Text(
  //     'Name: ' + userg.displayName,
  //     style: TextStyle(fontSize: 16),
  //     );
  //     SizedBox(height: 8);
  //     Text(
  //     'Email: ' + userg.email,
  //     style: TextStyle(fontSize: 16),
  //     );
  //   }else if(userf != null){
  //     SizedBox(height: 8);
  //     Text(
  //       'Name: ' + userg.displayName,
  //       style: TextStyle(fontSize: 16),
  //     );
  //   }
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (userm == null) getUser();
    // AUser();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
              icon: Icon(FontAwesomeIcons.signOutAlt),
              onPressed: () async {
                await auth.signOut();
                setState(() {});
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              // backgroundImage: NetworkImage(userg.photoURL),
              backgroundImage: (userg.photoURL == null)
                  ? AssetImage('assets/user.png')
                  : NetworkImage(userg.photoURL),
            ),
            // AUser();
            if (userm != null && userg != null) Text("Bienvenu cher"),
            if (userm != null && userg != null) Text("uid: " + userm.id),
            if (userm != null && userg != null) Text("email: " + userm.email),
            if (userg != null)
              SizedBox(height: 8),
            // if (userg != null)
            (userg.displayName == null)
                ? Text('Name: ...')
                :
            Text(
              'Name: ' + userg.displayName,
              style: TextStyle(fontSize: 16),
            ),
            if (userm != null && userg != null) Text("name: " + userm.displayName),
            if (userm != null && userg != null)
              Text("username: " + userm.username),
            if (userm != null && userg != null)
              Text("phone: " + userm.phone.toString()),

            // google signin
                //         CachedNetworkImage(
                //    imageUrl: userg.photoURL,
                //    placeholder: (context,url) => CircularProgressIndicator(),
                //    errorWidget: (context,url,error) => new Icon(Icons.error),
                //  ),

            if (userg.phoneNumber == null)
              SizedBox(height: 8),
            (userg.phoneNumber == null)
                ? Text('Phone: ...')
                :
            Text(
              'Phone: ' + userg.phoneNumber,
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
            // if (userg != null)
            //   SizedBox(height: 8),
            // if (userg != null)
            //   Text(
            //     'Email: ' + userg.email,
            //     style: TextStyle(fontSize: 16),
            //   ),
            if (userg.email == null)
              SizedBox(height: 8),
            (userg.email == null)
                ? Text('Email: ...')
                :
            Text(
              'Email: ' + userg.email,
              style: TextStyle(fontSize: 16),
            ),
            // if (userg != null || userm != null)
            //   SizedBox(height: 8),
            // (userg.email == null)
            //     ? Text('Email: ' + userm.email)
            //     :
            // Text(
            //   'Email: ' + userg.email,
            //   style: TextStyle(fontSize: 16),
            // ),
          ],
        ),
      ),
    );
  }
}
