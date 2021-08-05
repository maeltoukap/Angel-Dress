import 'dart:ui';
import 'package:angel_dress/ressources/produit_vendeur.dart';
import 'package:angel_dress/ressources/profil_menu.dart';
import 'package:angel_dress/ressources/variables.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../ressources/variables.dart';
import '../screens/panier.dart';
class SelerScreen extends StatelessWidget {
  const SelerScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
           backgroundColor: Colors.white,
          leading: IconButton( onPressed: (){
            // Navigator.pop(context, MaterialPageRoute<void>(
            //     builder:(BuildContext context) {
            //       return PanierScreen();
            //     })
            // );
          },
            icon: Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title:  Text("Mode vendeur", style: StyleTitre,),
          actions: [

                              MaterialButton( onPressed: (){},
                                child: Column(
                                  children: [SizedBox(
                                    height: 70.0,
                                    width: 70.0,
                                        child:CircleAvatar(
                                          backgroundColor: Color(Orange),
                                          backgroundImage: AssetImage("assets/img_6.jpg"),
                              ),
                                    ),
                                    Text(Solde+" XAF", style: GoogleFonts.montserrat(color: Color(Orange), fontSize: 10.0),)
                              ],
                                ),
                                ),

          ],
          toolbarHeight: 170.0,
          bottom: TabBar(
            indicatorColor: Color(Orange),
            tabs: [
            Tab(child: Row(
              children: [
                Icon(FontAwesomeIcons.bookmark, color: Color(Orange),),
                Text("  Vos articles",
                  style: GoogleFonts.montserrat(
                    fontSize: 15.0, color: Color(0xff707070),
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),),
            Tab(child: Row(
              children: [
                Icon(FontAwesomeIcons.cog, color: Color(Orange),),
                Text("  Parametres",
                  style: GoogleFonts.montserrat(
                    fontSize: 15.0, color: Color(0xff707070),
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),),
          ],),
        ),
        body: TabBarView(
          children: [
          Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5,),
            child:Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          children:[
                            Expanded(
                            // height: 430.0,
                            // margin: EdgeInsets.only(bottom: 90.0),
                            child: ListView(
                              children:<Widget>[
                                ProduitVendeur(nomProduit:"All Star", NombreLike: 5, imgProduit: "assets/img_4.jpg", prixProduit: 2500),
                                ProduitVendeur(nomProduit:"Poussette", NombreLike: 2, imgProduit: "assets/img_2.jpg", prixProduit: 2500),
                                ProduitVendeur(nomProduit:"Chaussure Noire", NombreLike: 4, imgProduit: "assets/img_5.jpg", prixProduit: 2500),
                                ProduitVendeur(nomProduit:"Costume Homme", NombreLike: 1, imgProduit: "assets/img_1.jpg", prixProduit: 2500),
                                ProduitVendeur(nomProduit:"Voiture de luxe", NombreLike: 9, imgProduit: "assets/img_2.jpg", prixProduit: 2500),
                              ],
                            ),
                          ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 40.0, bottom: 40.0),
                                child: Card(
                                  color: Color(Orange),
                                  elevation: 11.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                  ),
                                  child: SizedBox(
                                    width: 60.0,
                                    height: 60.0,
                                    child: IconButton( onPressed: (){

                                    },
                                      icon: Icon(
                                        FontAwesomeIcons.plus,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                              ],
                        ),
                      ),
                    ],
                  ),
                  ),
          ),
          ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Column(
                children: [
                  ProfileMenu(text: "Compte", route: PanierScreen(),icon: FontAwesomeIcons.user),
                  ProfileMenu(text: "Historique", route: PanierScreen(),icon: FontAwesomeIcons.history),
                  ProfileMenu(text: "Langue", route: PanierScreen(),icon: FontAwesomeIcons.globe),
                  ProfileMenu(text: "Notifications",route: PanierScreen(), icon: FontAwesomeIcons.bell),
                  ProfileMenu(text: "Mode Acheteur",route: PanierScreen(), icon: FontAwesomeIcons.shoppingCart),
                  ProfileMenu(text: "Deconnexion",route: PanierScreen(), icon: FontAwesomeIcons.signOutAlt,),
                ],
            ),
              ),),
          ],
        ),

        // child:
      ),
    );
  }
}
