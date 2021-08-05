import 'dart:io';
import 'dart:ui';
import 'package:angel_dress/ressources/variables.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../ressources/variables.dart';
import '../services/fonctions.dart';

class PanierScreen extends StatefulWidget {
  @override
  _PanierScreenState createState() => _PanierScreenState();
}

class _PanierScreenState extends State<PanierScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Material(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          width: MediaQuery.of(context).size.width,
                          height: 130.0,
                          child: Center(
                            child: Row(
                              children: <Widget>[
                              Card(
                              elevation: 15.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: IconButton( onPressed: (){
                                Navigator.push(context, MaterialPageRoute<void>(
                                    builder:(BuildContext context) {
                                      return PanierScreen();
                                    })
                                );
                              },
                                icon: Icon(
                                  FontAwesomeIcons.chevronLeft,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                                Container(
                                  // width: 70.0,
                                  // height: 50.0,
                                  margin: EdgeInsets.only(right: 20.0),
                                  child:  MaterialButton(
                                    padding: const EdgeInsets.all(0),
                                    elevation: 0.5,
                                    color: Colors.white,
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(60.0),
                                    ),
                                    child:
                                    Ink(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        image: DecorationImage(
                                          image: AssetImage('assets/img_6.jpg'),
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          width: double.infinity,
                          height: 130.0,
                          child: Center(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text("Panier",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 50.0, color: Color(0xff707070),
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                                Card(
                                  // elevation: 15.0,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  // ),
                                  margin: EdgeInsets.only(right:30.0),
                                  child: IconButton( onPressed: (){},
                                    icon: Icon(
                                      FontAwesomeIcons.trash,
                                      color: Color(0xffdb7032),
                                    ),
                                  ),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 380.0,
                margin: EdgeInsets.only(top: 150.0),
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[
                    Container(
                      // color: Colors.blue,
                      child:Padding(
                        padding: const EdgeInsets.only( bottom: 0.0),
                        child: Card(
                          color: Colors.black38.withOpacity(0.001),
                          // padding: EdgeInsets.all(0),
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // onPressed: (){},
                          child: Row(
                            children: <Widget>[
                              Ink(
                                height: 70.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img_1.jpg'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child:ListTile(
                                          title: Text("Poussette"),
                                          subtitle: Text(PrixArticle+' XAF'),
                                        ),
                                      ),
                                      Container(
                                        child: Text("x2"),
                                      ),
                                      IconButton(
                                        icon: Icon(FontAwesomeIcons.trash, color: Color(0xffdb7032),
                                          size: 15.0,),
                                        onPressed: () {
                                          print('tapped');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      child:Padding(
                        padding: const EdgeInsets.only( bottom: 0.0),
                        child: Card(
                          color: Colors.black38.withOpacity(0.001),
                          // padding: EdgeInsets.all(0),
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // onPressed: (){},
                          child: Row(
                            children: <Widget>[
                              Ink(
                                height: 70.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img_2.jpg'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child:ListTile(
                                          title: Text(NomArticle),
                                          subtitle: Text(PrixArticle+' XAF'),
                                        ),
                                      ),
                                      Container(
                                        child: Text("x2"),
                                      ),
                                      IconButton(
                                        icon: Icon(FontAwesomeIcons.trash, color: Color(0xffdb7032),
                                          size: 15.0,),
                                        onPressed: () {
                                          print('tapped');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      child:Padding(
                        padding: const EdgeInsets.only( bottom: 0.0),
                        child: Card(
                          color: Colors.black38.withOpacity(0.001),
                          // padding: EdgeInsets.all(0),
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // onPressed: (){},
                          child: Row(
                            children: <Widget>[
                              Ink(
                                height: 70.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img_3.jpg'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child:ListTile(
                                          title: Text("Voiture de luxe"),
                                          subtitle: Text(PrixArticle+' XAF'),
                                        ),
                                      ),
                                      Container(
                                        child: Text("x2"),
                                      ),
                                      IconButton(
                                        icon: Icon(FontAwesomeIcons.trash, color: Color(0xffdb7032),
                                          size: 15.0,),
                                        onPressed: () {
                                          print('tapped');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      child:Padding(
                        padding: const EdgeInsets.only( bottom: 0.0),
                        child: Card(
                          color: Colors.black38.withOpacity(0.001),
                          // padding: EdgeInsets.all(0),
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // onPressed: (){},
                          child: Row(
                            children: <Widget>[
                              Ink(
                                height: 70.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img_4.jpg'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child:ListTile(
                                          title: Text("All Star"),
                                          subtitle: Text(PrixArticle+' XAF'),
                                        ),
                                      ),
                                      Container(
                                        child: Text("x2"),
                                      ),
                                      IconButton(
                                        icon: Icon(FontAwesomeIcons.trash, color: Color(0xffdb7032),
                                          size: 15.0,),
                                        onPressed: () {
                                          print('tapped');
                                        },
                                      ),
                                    ],
                                  ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      child:Padding(
                        padding: const EdgeInsets.only( bottom: 0.0),
                        child: Card(
                          color: Colors.black38.withOpacity(0.001),
                          // padding: EdgeInsets.all(0),
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // onPressed: (){},
                          child: Row(
                            children: <Widget>[
                              Ink(
                                height: 70.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img_5.jpg'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child:ListTile(
                                          title: Text("Veste Homme"),
                                          subtitle: Text(PrixArticle+' XAF'),
                                        ),
                                      ),
                                      Container(
                                        child: Text("x2"),
                                      ),
                                      IconButton(
                                        icon: Icon(FontAwesomeIcons.trash, color: Color(0xffdb7032),
                                          size: 15.0,),
                                        onPressed: () {
                                          print('tapped');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      child:Padding(
                        padding: const EdgeInsets.only( bottom: 0.0),
                        child: Card(
                          color: Colors.black38.withOpacity(0.001),
                          // padding: EdgeInsets.all(0),
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // onPressed: (){},
                          child: Row(
                            children: <Widget>[
                              Ink(
                                height: 70.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img_5.png'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child:ListTile(
                                          title: Text("Chaussure noire"),
                                          subtitle: Text(PrixArticle+' XAF'),
                                        ),
                                      ),
                                      Container(
                                        child: Text("x2"),
                                      ),
                                      IconButton(
                                        icon: Icon(FontAwesomeIcons.trash, color: Color(0xffdb7032),
                                          size: 15.0,),
                                        onPressed: () {
                                          print('tapped');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total :",style: GoogleFonts.montserrat(
                            color: Colors.black38, fontSize: 30.0
                        ),),
                        Text(TotalPrix+' XAF', style: GoogleFonts.montserrat(
                            color: Colors.deepOrangeAccent, fontSize: 28.0, fontStyle: FontStyle.normal
                        ),),
                      ],
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      color: Color(0xffdb7032),
                      elevation: 7.0,
                      child: ElevatedButton.icon(
                        onPressed: null, label: Text("Commander", style: GoogleFonts.montserrat(
                          color: Colors.white
                      ),),icon: Icon( FontAwesomeIcons.shoppingBag, color: Colors.white,), ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
