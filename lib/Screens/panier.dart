import 'dart:ui';
import 'package:angel_dress/ressources/produit_panier.dart';
import 'package:angel_dress/ressources/variables.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../ressources/variables.dart';

// ignore: must_be_immutable
class PanierScreen extends StatefulWidget {
  String bo;
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
                  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 5,),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 15.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: IconButton( onPressed: (){
                              // Navigator.pop(context, MaterialPageRoute<void>(
                              //     builder:(BuildContext context) {
                              //       return SelerScreen();
                              //     })
                              // );
                            },
                              icon: Icon(
                                FontAwesomeIcons.chevronLeft,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          // Text("Mode vendeur", style: GoogleFonts.montserrat(fontSize: 20.0, color: Color(0xff707070),),),
                          MaterialButton(
                            child: SizedBox(
                              height: 70.0,
                              width: 70.0,
                              child:CircleAvatar(
                                backgroundColor: Color(Orange),
                                backgroundImage: AssetImage("assets/img_6.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    // ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // height: 130.0,
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
                            Container(
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
                    Spacer(),
                    Container(
                      height: 430.0,
                      margin: EdgeInsets.only(bottom: 90.0),
                      child: ListView(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          ProduitPanier(nomProduit: "Poussette", quantiteProduit: 2, imgProduit: "assets/img_1.jpg", prixProduit: 2000),
                          ProduitPanier(nomProduit: "Chaussure Jordan", quantiteProduit: 5, imgProduit: "assets/img_2.jpg", prixProduit: 8000),
                          ProduitPanier(nomProduit: "Voiture de Luxe", quantiteProduit: 1, imgProduit: "assets/img_3.jpg", prixProduit: 2100000),
                          ProduitPanier(nomProduit: "All Star", quantiteProduit: 2, imgProduit: "assets/img_4.jpg", prixProduit: 4000),
                          ProduitPanier(nomProduit: "Costume Homme", quantiteProduit: 2, imgProduit: "assets/img_5.jpg", prixProduit: 7000),
                          ProduitPanier(nomProduit: "Chaussure Noire", quantiteProduit: 2, imgProduit: "assets/img_5.png", prixProduit: 8000),
                          ProduitPanier(nomProduit: "All Star", quantiteProduit: 2, imgProduit: "assets/img_4.jpg", prixProduit: 1000),
                          ProduitPanier(nomProduit: "Poussette", quantiteProduit: 2, imgProduit: "assets/img_1.jpg", prixProduit: 4000),

                        ],
                      ),
                    ),

    ],
              ),
              ),
    ),
    ),
            ),
            // Align(
            //   alignment: Alignment.center,
            //
            // ),

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
                            color: Colors.black38, fontSize: 25.0
                        ),),
                        Text(TotalPrix+' XAF', style: GoogleFonts.montserrat(
                            color: Colors.deepOrangeAccent, fontSize: 25.0, fontStyle: FontStyle.normal
                        ),),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      // color: Colors.black38,
                      padding: EdgeInsets.symmetric(horizontal:30.0, vertical: 8.0),
                      child: ElevatedButton(
                        onPressed: () async{
                          // if(keys.currentState.validate()){
                          //   print(QteProduit+" "+NomProduit+" viennent d'etre ajouter a la cathegorie"+Cathegorie);
                          //   // bool NewProduct = await NouvelArticle(QteProduit, NomProduit, Cathegorie);
                          //   if(NewProduct) Navigator.of(context).pop();

                          // }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(Orange), //// background
                            onPrimary: Colors.black38,
                            elevation: 11,
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(40.0)) // foreground
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.cartPlus, color: Colors.white,),
                            SizedBox(width: 10.0,),
                            Text("Commander",
                                style: GoogleFonts.montserrat(fontSize: 20.0, color: Colors.white)),
                          ],
                        ),
                      ),
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
