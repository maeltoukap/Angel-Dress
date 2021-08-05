import 'package:angel_dress/Functions/Splash_screen/const.dart';
import 'package:angel_dress/Functions/loading.dart';
import 'package:angel_dress/Screens/home.dart';
import 'package:angel_dress/Services/auth_service.dart';
import 'package:angel_dress/Services/google_service.dart';
import 'package:angel_dress/Services/facebook_service.dart';
import 'package:angel_dress/widgets/API-row-button.dart';
import 'package:angel_dress/widgets/devider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  // TextEditingController _email = TextEditingController();
  String Msg = "", _email;
  final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
//   ScaffoldMessenger.of(context).showSnackBar(snackBar);

  // @override
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: 'Email',
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                FontAwesomeIcons.envelope,
                color: Colors.white,
                // size: 30,
                size: 25,
              ),
            ),
          ),
          validator: (String value) {
            if (value.isEmpty) {
              return "L'email est requis";
            }

            if (!RegExp(
                    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
              return 'Entrez un email valide';
            }

            return null;
          },
          onChanged: (value) => _email = value,
          // controller: _email,
          // onSaved: (String value) {
          //   _email = value;
          // },
        ),
      ),
    );
  }

  AuthService auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      child: Center(
                        child: Text(
                          'Angel Dress',
                          style: kHeading,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(24),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            _buildEmail(),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          new RoundedButton(
                            buttonText: 'Reinitialiser',
                            onPressed: () async {
                              print("btn click");
                              if (_formKey.currentState.validate()) {
                                loading(context);
                                print(_email);
                                bool reset = await auth.resetPassword(_email);
                                if (reset) {
                                  Msg =
                                      "Acceder a votre email pour reinitialiser votre mot de passe";
                                  setState(() {});
                                }
                                if (reset != null) {
                                  Navigator.of(context).pop();
                                  if (!reset)
                                    print("email ou mot de passe incorrecte");
                                }
                              }

                              _formKey.currentState.save();

                              print(this._email);
                              // final snackBar = SnackBar(
                              //   content: Text('Yay! A SnackBar!'),
                              //   action: SnackBarAction(
                              //     label: 'Undo',
                              //     onPressed: () {
                              //       // Some code to undo the change.
                              //     },
                              //   ),);
                              // // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              // Scaffold.of(context).showSnackBar(snackBar);
                            },
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: Text(
                              Msg,
                              style: messagesGreen,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
