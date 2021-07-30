import 'package:angel_dress/Functions/Splash_screen/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ApiRowButton extends StatelessWidget {
  const ApiRowButton(
      {Key key,
        @required this.buttonText,
        @required this.onPressed,
        @required this.ApiButtonColor,
        this.IconColor,
        @required this.icon})
      : super(key: key);

  final String buttonText;
  final onPressed;
  final Icon icon;
  final Color IconColor;
  final Color ApiButtonColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            child: Row(
              children: [
                Container(
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    // color: Color(0xffff6404),
                    // color: Color(0xfff9A826),
                    color: ApiButtonColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: FlatButton.icon(
                    onPressed: onPressed,
                    label: Text(
                      buttonText,
                      style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
                    ),
                    icon: icon,
                    // color: IconColor,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
