import 'package:angel_dress/ressources/variables.dart';
import 'package:angel_dress/screens/like_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class ProfileMenu extends StatelessWidget {

  const ProfileMenu({
    Key key,
    @required this.text,
    @required this.route,
    @required this.icon,
    // this.profilPress,
  }) : super(key: key);

  final String text;
  final   icon, route;
  // final VoidCallback profilPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        disabledColor: Colors.black38.withOpacity(0.1),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: (){
          // Navigator.pushNamed(context, );
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: Color(Orange),
              size: 22,
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text, style: GoogleFonts.montserrat(fontSize: 20.0,color: Color(0xff707070),),),),
            Icon(FontAwesomeIcons.chevronRight, color: Color(Orange),),
          ],
        ),
      ),
    );
  }
}
