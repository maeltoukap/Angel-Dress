import 'package:flutter/material.dart';

import '../Functions/Splash_screen/const.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonText,
    @required this.onPressed
  }) : super(key: key);

  final String buttonText;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffff6404),
        // color: Color(0xfff9A826),
        borderRadius: BorderRadius.circular(16),
      ),
      child: FlatButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            buttonText,
            style: kBodyText,
          ),

        ),
      ),
    );
  }
}
