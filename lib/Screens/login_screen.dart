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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  // String _email;
  // String _password;
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
          // onChanged: (value) => _email = value,
          controller: _email,
          // onSaved: (String value) {
          //   _email = value;
          // },
        ),
      ),
    );
  }

  // Initially password is obscure
  bool obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  Widget _buildPassword() {
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
            hintText: 'Mot de passe',
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                FontAwesomeIcons.userLock,
                color: Colors.white,
                // size: 30,
                size: 25,
              ),
            ),
          ),
          keyboardType: TextInputType.visiblePassword,
          validator: (String value) {
            if (value.isEmpty) {
              return "Le champs mdp est requis";
            } else if (value.length < 8) {
              return "Le mot de passe doit comporter au moins 8 caractères";
            }

            return null;
          },
          // onSaved: (value) => _password = value,
          controller: _password,
          obscureText: obscureText,
          // onSaved: (String value) {
          //   _password = value;
          // },
        ),
      ),
    );

    // IconButton(
    //   onPressed: _toggle,
    //   icon: FaIcon(obscureText ? FontAwesomeIcons.eye: FontAwesomeIcons.eyeSlash),
    // ),],
    // );
  }

  AuthService auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        // ShaderMask(
        //   shaderCallback: (bounds) => LinearGradient(
        //     colors: [Colors.black12, Colors.black12],
        //     begin: Alignment.bottomCenter,
        //     end: Alignment.center,
        //   ).createShader(bounds),
        //   blendMode: BlendMode.darken,
        //   child: Container(
        //     decoration: BoxDecoration(
        //       image: DecorationImage(
        //         image: AssetImage('assets/5448485.png'),
        //         fit: BoxFit.cover,
        //         colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken),
        //       ),
        //     ),
        //   ),
        // ),
        Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   title: Text(
          //     "INSCRIPTION",
          //     style: GoogleFonts.montserrat(letterSpacing: 1.0),
          //   ),
          //   backgroundColor: Colors.blueAccent,
          //   automaticallyImplyLeading: false,
          // ),
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
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Container(
                    margin: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _buildEmail(),
                          _buildPassword(),
                          // SizedBox(height: 100),
                          // ButtonTheme(
                          //   minWidth: 300.0,
                          //   buttonColor: Colors.blueAccent,
                          //   child: RaisedButton(
                          //     child: Text(
                          //       "SE CONNECTER",
                          //       style: GoogleFonts.montserrat(
                          //           color: Colors.white,
                          //           fontSize: 16,
                          //           letterSpacing: 2.0),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        new RoundedButton(
                          buttonText: 'Se connecter',
                          onPressed: () async {
                            print("btn click");
                            if (_formKey.currentState.validate()) {
                              loading(context);
                              print(_password);
                              // print(_email + _password);
                              bool login = await auth.signIn(
                                  this._email.text, this._password.text);
                              if (login != null) {
                                Navigator.of(context).pop();
                                if (!login)
                                  print("email ou mot de passe incorrecte");
                              }
                            }

                            _formKey.currentState.save();

                            print(this._email.text);
                            print(this._password.text);
                            // if (_formKey.currentState.validate()) {
                            //   // Affiche le Snackbar si le formulaire est valide
                            //   Scaffold.of(context).showSnackBar(
                            //       SnackBar(content: Text('Traitement en cours')));
                            // }
                            //Send to API
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.white, width: 1),
                            ),
                          ),
                          child: FlatButton(
                              child: Text(
                                'Creer un compte',
                                style: kBodyText,
                              ),
                              onPressed: () =>
                                  MyNavigator.signinScreenNavigator(context)
                              // duration: Duration(milliseconds: 300),
                              // curve: Curves.easeIn),
                              ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        DotDivider(),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // ElevatedButton.icon(
                            //   onPressed: null, label: Text("Commander", style: GoogleFonts.montserrat(
                            //     color: Colors.red
                            // ),),icon: Icon( FontAwesomeIcons.shoppingBag, color: Colors.white,), ),
                            ApiRowButton(
                              ApiButtonColor: Colors.red,
                              buttonText: "GOOGLE",
                              onPressed: () {
                                print("google");
                                final provider =
                                    Provider.of<GoogleSignInProvider>(context,
                                        listen: false);
                                provider.login();
                              },
                              icon: Icon(
                                FontAwesomeIcons.google,
                                color: Colors.white,
                              ),
                            ),
                            ApiRowButton(
                              ApiButtonColor: Colors.blueAccent,
                              buttonText: "FACEBOOK",
                              onPressed: () async {
                                print("facebook");
                                await LoginWithFacebook().handleLogin();
                                // final login = await logg().loginWithFB();
                                // print("--------------$login----------");
                                // if (logg().isLoggedIn = true) {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (BuildContext context) {
                                //         return HomePage();
                                //       },
                                //     ),
                                //   );
                                  // Navigator.of(context).pop();
                                //   if (!login)
                                //     print("email ou mot de passe incorrecte");
                                // };
                                // LoginWithFacebook();
                                print("yes");
                              },
                              icon: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                              ),
                            ),
                            // Text("GOOGLE",
                            //   style: kBodyText,
                            // ),
                            // Text("FACEBOOK",
                            //   style: kBodyText,
                            // ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
