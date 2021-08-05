
import 'package:angel_dress/screens/like_page.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
var couleur = 0xffffa500;
// var BouttonRetour = Card(
//   elevation: 15.0,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//   ),
//   child: IconButton( onPressed: (){
//     Navigator.push(context, MaterialPageRoute<void>(
//             builder:(BuildContext context) {
//               return PanierScreen();
//             })
//     );
//   },
//     icon: Icon(
//       FontAwesomeIcons.chevronLeft,
//       color: Colors.black,
//     ),
//   ),
// );
var ProfilIcon = Container(
  margin: EdgeInsets.only(right: 20.0),
  child: CircleAvatar(
    radius: 32.0,
    backgroundColor: Colors.black12,
    child: Icon(
      FontAwesomeIcons.user,
      size: 40.0,
      color: Colors.black54,
    ),
  ),
);
var TotalPrix = '2500';
var PrixArticle = '500';
var NomArticle= "Chaussures Jordan";
var StyleTextBouton="";
var Orange=0xffdb7032;
var Solde="15000";
var StyleTitre= GoogleFonts.montserrat(fontSize: 20.0, color: Color(0xff707070),);
var Monserrat =  GoogleFonts.montserrat(fontSize: 14.0, color: Color(0xff707070));