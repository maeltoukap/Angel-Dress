import 'package:angel_dress/Services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Functions/Splash_screen/const.dart';
import '../widgets/widgets.dart';

class LogPage extends StatelessWidget {
  
  String _name;
  String _email;
  String _username;
  String _phoneNumber;
  String _password;
  String _cpassword;
  

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
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
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Mot de passe',
                              inputAction: TextInputAction.done,
                            ),
                            Text(
                              'Mot de passe oublié?',
                              style: smallkBodyText,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            RoundedButton(
                              buttonText: 'Se connecter',
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
