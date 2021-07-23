import 'package:angel_dress/Functions/loading.dart';
import 'package:angel_dress/Services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;
  @override
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
        icon: new Icon(FontAwesomeIcons.envelope),
        labelText: 'Email',
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
      // onSaved: (String value) {
      //   _email = value;
      // },
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
    return
        // Column(
        // children: [
        TextFormField(
      decoration: InputDecoration(
        icon: new Icon(FontAwesomeIcons.userLock),
        labelText: 'Mot de passe',
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
      onSaved: (value) => _password = value,
      obscureText: obscureText,
      // onSaved: (String value) {
      //   _password = value;
      // },
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
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Colors.black12, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ).createShader(bounds),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/5448485.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "INSCRIPTION",
              style: GoogleFonts.montserrat(letterSpacing: 1.0),
            ),
            backgroundColor: Colors.blueAccent,
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildEmail(),
                    _buildPassword(),
                    SizedBox(height: 100),
                    ButtonTheme(
                      minWidth: 300.0,
                      buttonColor: Colors.blueAccent,
                      child: RaisedButton(
                        child: Text(
                          "SE CONNECTER",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 2.0),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            loading(context);
                            print(_email + _password);
                            bool login = await auth.signIn(_email, _password);
                            if (login != null) {
                              Navigator.of(context).pop();
                            if (!login) print("email ou mot de passe incorrecte");
                            }
                          }

                          _formKey.currentState.save();

                          print(_email);
                          print(_password);
                          // if (_formKey.currentState.validate()) {
                          //   // Affiche le Snackbar si le formulaire est valide
                          //   Scaffold.of(context).showSnackBar(
                          //       SnackBar(content: Text('Traitement en cours')));
                          // }
                          //Send to API
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
