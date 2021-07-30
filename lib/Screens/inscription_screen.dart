import 'package:angel_dress/Functions/Splash_screen/const.dart';
import 'package:angel_dress/Functions/loading.dart';
import 'package:angel_dress/Services/auth_service.dart';
import 'package:angel_dress/widgets/devider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/widgets.dart';

class Inscription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InscriptionState();
  }
}

class InscriptionState extends State<Inscription> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _username = TextEditingController();
  // TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _cpassword = TextEditingController();
  // String _name;
  // String _email;
  // String _username;
  // String _phoneNumber;
  int _phoneNumber;
  // String _password;
  // String _cpassword;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
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
              hintText: 'Nom',
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  FontAwesomeIcons.user,
                  color: Colors.white,
                  // size: 30,
                  size: 25,
                ),
              ),
            ),
            validator: (String value) {
              if (value.isEmpty) {
                return 'Le nom est requis';
              }

              return null;
            },
            // onChanged: (value) => _name = value,
            controller: _name,
            // onSaved: (String value) {
            //   _name = value;
            // },
          )
          // labelText: 'Nom',
          ),
    );
    //   validator: (String value) {
    //     if (value.isEmpty) {
    //       return 'Le nom est requis';
    //     }

    //     return null;
    //   };
    //   onChanged: (value) => _name = value,
    //   // onSaved: (String value) {
    //   //   _name = value;
    //   // },
    // )
  }

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
          controller: _email,
          // onChanged: (value) => _email = value,
          // onSaved: (String value) {
          //   _email = value;
          // },
        ),
      ),
    );
  }

  Widget _builUsername() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          // maxLength: 15,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: "Nom d'utilisateur",
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                FontAwesomeIcons.userAlt,
                color: Colors.white,
                // size: 30,
                size: 25,
              ),
            ),
          ),
          keyboardType: TextInputType.url,
          validator: (String value) {
            if (value.isEmpty) {
              return "Le nom d'utilisateur est requis";
            }

            return null;
          },
          controller: _username,
          // onChanged: (value) => _username = value,
          // onSaved: (String value) {
          //   _username = value;
          // },
        ),
      ),
    );
  }

  Widget _buildPhoneNumber() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          // maxLength: 15,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: "Telephone",
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                FontAwesomeIcons.phoneAlt,
                color: Colors.white,
                // size: 30,
                size: 25,
              ),
            ),
          ),
          keyboardType: TextInputType.number,
          validator: (String value) {
            if (value.isEmpty) {
              return 'Le telephone est requis';
            }

            return null;
          },
          // controller: _phoneNumber,
          // controller: int.parse(__phoneNumber),
          onChanged: (value) => _phoneNumber = int.parse(value),
          // onSaved: (String value) {
          //   _phoneNumber = value;
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
    return
        // Column(
        // children: [
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          // maxLength: 15,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: "Mot de passe",
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
          controller: _password,
          // onSaved: (value) => _password = value,
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

  Widget _buildCPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          // maxLength: 15,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: "Confirmer le mdp",
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                FontAwesomeIcons.lock,
                color: Colors.white,
                // size: 30,
                size: 25,
              ),
            ),
          ),
          keyboardType: TextInputType.visiblePassword,
          validator: (String value) {
            if (value.isEmpty) return 'Veuillez confirmer votre mdp';
            if (value != _password) return "Veuillez verifier votre mdp";
            return null;
          },
          controller: _cpassword,
          // onChanged: (value) => _cpassword = value,
          obscureText: obscureText,
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
                            'INSCRIPTION',
                            style: kHeading,
                          ),
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Text(
                        "Inscrivez vous pour acceder au notre catalogue de produit",
                        style: smallkBodyText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _buildName(),
                          _buildEmail(),
                          _builUsername(),
                          _buildPhoneNumber(),
                          _buildPassword(),
                          _buildCPassword(),
                          // SizedBox(height: 100),
                          // ButtonTheme(
                          //   minWidth: 300.0,
                          //   buttonColor: Colors.blueAccent,
                          //
                          //   child: RaisedButton(
                          //     child: Text(
                          //       "S'INSCRIRE",
                          //       style: GoogleFonts.montserrat(
                          //           color: Colors.white,
                          //           fontSize: 16,
                          //           letterSpacing: 2.0),
                          //     ),
                          //     onPressed: () async {
                          //       if (_formKey.currentState.validate()) {
                          //         print(_email + _password);
                          //         bool register = await auth.signUp(
                          //             _email, _name, _username, _password);
                          //         if (register) Navigator.of(context).pop();
                          //       }
                          //
                          //       _formKey.currentState.save();
                          //
                          //       print(_name);
                          //       print(_email);
                          //       print(_username);
                          //       print(_phoneNumber);
                          //       print(_password);
                          //       print(_cpassword);
                          //       // if (_formKey.currentState.validate()) {
                          //       //   // Affiche le Snackbar si le formulaire est valide
                          //       //   Scaffold.of(context).showSnackBar(
                          //       //       SnackBar(content: Text('Traitement en cours')));
                          //       // }
                          //       //Send to API
                          //     },
                          //   ),
                          // ),

                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              new RoundedButton(
                                buttonText: "S'INSCRIRE",
                                onPressed: () async {
                                  if (_formKey.currentState.validate()) {
                                    loading(context);
                                      print(this._email.text + this._password.text);
                                      bool register = await auth.signUp( this._name.text,
                                          this._email.text, this._username.text, this._phoneNumber, this._password.text);
                                      if (register) Navigator.of(context).pop();
                                      print("j'suis la");
                                  }

                                  _formKey.currentState.save();

                                  print(_name);
                                  print(_email);
                                  print(_username);
                                  print(_phoneNumber);
                                  print(_password);
                                  print(_cpassword);
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
                                    bottom:
                                    BorderSide(color: Colors.white, width: 1),
                                  ),
                                ),
                                child: FlatButton(
                                    child: Text(
                                      'Se connecter',
                                      style: kBodyText,
                                    ),
                                    onPressed: () =>
                                        MyNavigator.loginScreenNavigator(context)
                                  // duration: Duration(milliseconds: 300),
                                  // curve: Curves.easeIn),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
//
// class Inscription extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//       return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'INSCRIPTION',
//         theme: ThemeData(
//           primarySwatch: Colors.orange,
//         ),
//         home: MyHomePage(title: 'Formulaire et Snackbar'),
//       );
//         Scaffold(
//         appBar: AppBar(
//           title: Text('INSCRIPTION'),
//           backgroundColor: Colors.blueGrey,
//             automaticallyImplyLeading: false,
//         ),
//       );
//   }
// }
//
// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: 'INSCRIPTION',
//     theme: ThemeData(
//       primarySwatch: Colors.orange,
//     ),
//     home: MyHomePage(title: 'INSCRIPTION'),
//   );
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         child: MyCustomForm(),
//       ),
//     );
//   }
// }
// class MyCustomForm extends StatefulWidget {
//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }
// class MyCustomFormState extends State<MyCustomForm> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     // Construire le formulaire avec _formKey créé au-dessus
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextFormField(
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'Veuillez saisir un texte';
//               }
//               return null;
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: RaisedButton(
//               onPressed: () {
//                 // Retourne true si le formulaire est valide, sinon false
//                 if (_formKey.currentState.validate()) {
//                   // Affiche le Snackbar si le formulaire est valide
//                   Scaffold.of(context).showSnackBar(
//                       SnackBar(content: Text('Traitement en cours')));
//                 }
//               },
//               child: Text('Envoyer'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
