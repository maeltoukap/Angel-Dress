import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Functions/Splash_screen/const.dart';
import '../widgets/widgets.dart';

class inscPAge extends StatelessWidget {
  bool isChecked = false;
  
  String _name;
  String _email;
  String _username;
  String _phoneNumber;
  String _password;
  String _cpassword;

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
                        'INSCRIPTION',
                        style: kHeading,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 100,
                  // ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.user,
                              hint: 'Nom',
                              inputType: TextInputType.name,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              icon: FontAwesomeIcons.userAlt,
                              hint: "Nom d'utilisateur",
                              inputType: TextInputType.name,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              icon: FontAwesomeIcons.phoneAlt,
                              hint: 'Telephone',
                              inputType: TextInputType.phone,
                              inputAction: TextInputAction.next,
                            ),
                            
                            PasswordInput(
                              icon: FontAwesomeIcons.userLock,
                              hint: 'Mot de passe',
                              inputAction: TextInputAction.done,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Confirmer le mdp',
                              inputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Checkbox(
                                checkColor: Colors.white,
                                value: isChecked,
                                onChanged: (bool value) {
                                  isChecked = true;
                                },
                              ),
                            ),
                            Text(
                              "J'accepte les conditions generales \nd'utilisation",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            RoundedButton(
                              buttonText: "S'inscrire",
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
