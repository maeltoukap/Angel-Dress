// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
// //
// //
// // class logg extends StatefulWidget {
// //   @override
// //   State<StatefulWidget> createState() {
// //     // TODO: implement createState
// //     return _loggState();
// //   }
// // }
// //
// // class _loggState extends State<logg> {
// //   bool _isLoggedIn = false;
// //   Map userDetails;
// //   final facebookLogin = FacebookLogin();
// //
// //   _loginWithFB() async {
// //     final result = await facebookLogin.logInWithReadPermissions(['email']);
// //
// //     switch (result.status) {
// //       case FacebookLoginStatus.loggedIn:
// //         final token = result.accessToken.token;
// //         final graphResponse = await http.get(
// //             'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
// //         final details = jsonDecode(graphResponse.body);
// //         print(details);
// //         print("----------ici-----------------");
// //         setState(() {
// //           userDetails = details;
// //           _isLoggedIn = true;
// //         });
// //         break;
// //
// //       case FacebookLoginStatus.cancelledByUser:
// //         setState(() => _isLoggedIn = false);
// //         break;
// //       case FacebookLoginStatus.error:
// //         setState(() => _isLoggedIn = false);
// //         break;
// //     }
// //   }
// //
// //   _logout() {
// //     facebookLogin.logOut();
// //     setState(() {
// //       _isLoggedIn = false;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: Center(
// //             child: _isLoggedIn
// //                 ? Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: <Widget>[
// //                 Image.network(
// //                   userDetails["picture"]["data"]["url"],
// //                   height: 50.0,
// //                   width: 50.0,
// //                 ),
// //                 Text(userDetails["name"]),
// //                 FlatButton(
// //                   color: Colors.blue[600],
// //                   child: Text("Logout"),
// //                   onPressed: () {
// //                     _logout();
// //                   },
// //                 )
// //               ],
// //             )
// //                 : Center(
// //               child: FacebookSignInButton(
// //                 onPressed: () {
// //                   _loginWithFB();
// //                 },
// //               ),
// //             )),
// //       ),
// //     );
// //   }
// // }
//
// class logg {
//     bool isLoggedIn = false;
//   Map userDetails;
//   final facebookLogin = FacebookLogin();
//   Future<bool> loginWithFB() async {
//     final result = await facebookLogin.logInWithReadPermissions(['email']);
//
//     switch (result.status) {
//       case FacebookLoginStatus.loggedIn:
//         final token = result.accessToken.token;
//         final graphResponse = await http.get(
//             'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
//         final details = jsonDecode(graphResponse.body);
//         // print(details);
//         print("----------ici-----------------");
//         // setState(() {
//         //   userDetails = details;
//         //   _isLoggedIn = true;
//         // });
//         if(details != null) {
//           userDetails = details;
//           isLoggedIn = true;
//           print("------------get---------------");
//         }
//         break;
//
//       case FacebookLoginStatus.cancelledByUser:
//         // setState(() =>
//         isLoggedIn = false;
//         print("--------------cancel-------------");
//     // );
//         break;
//       case FacebookLoginStatus.error:
//         // setState(() =>
//         isLoggedIn = false;
//         print("-----------error----------------");
//         // );
//         break;
//     }
//   }
//
//   logout() {
//     facebookLogin.logOut();
//     // setState(() {
//       isLoggedIn = false;
//     // });
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

// class LoginWithFacebook extends StatefulWidget {
//   @override
//   _LoginWithFacebookState createState() => _LoginWithFacebookState();
// }

class LoginWithFacebook {
  bool isSignIn = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  FacebookLogin facebookLogin = FacebookLogin();

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("facebook login"),
  //     ),
  //     body: isSignIn
  //         ? Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           CircleAvatar(
  //             radius: 80,
  //             backgroundImage: NetworkImage(_user.photoURL),
  //           ),
  //           Text(
  //             _user.displayName,
  //             style: TextStyle(fontSize: 30),
  //           ),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           // OutlineButton(
  //           //   onPressed: () {
  //           //     gooleSignout();
  //           //   },
  //           //   child: Text(
  //           //     "Logout",
  //           //     style: TextStyle(fontSize: 20),
  //           //   ),
  //           // )
  //         ],
  //       ),
  //     )
  //         : Center(
  //       child: OutlineButton(
  //         onPressed: () async {
  //           await handleLogin();
  //         },
  //         child: Text(
  //           "Login with facebook",
  //           style: TextStyle(fontSize: 20),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Future<bool> handleLogin() async {
    final FacebookLoginResult result = await facebookLogin.logInWithReadPermissions(['email']);
    switch (result.status) {
      case FacebookLoginStatus.cancelledByUser:
        break;
      case FacebookLoginStatus.error:
        break;
      case FacebookLoginStatus.loggedIn:
        try {
          await loginWithfacebook(result);
        } catch (e) {
          print(e);
        }
        break;
    }
  }

  Future loginWithfacebook(FacebookLoginResult result) async {
    final FacebookAccessToken accessToken = result.accessToken;
    AuthCredential credential =
    FacebookAuthProvider.credential(accessToken.token);
    var a = await _auth.signInWithCredential(credential);
    // setState(() {
    if(a != null){
      isSignIn = true;
      user = a.user;}
    // });
  // }

  Future<void> gooleSignout() async {
   var s = await _auth.signOut().then((onValue) {
      // setState(() {
        facebookLogin.logOut();
        isSignIn = false;
      // });
    });
  }
}}