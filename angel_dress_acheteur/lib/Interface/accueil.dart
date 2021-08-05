//import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:angel_dress_acheteur/Outils/appbartool.dart';
import 'package:angel_dress_acheteur/Outils/constantes.dart';
import 'package:angel_dress_acheteur/Outils/tab_navigation.dart';

import 'package:flutter/material.dart';

import 'package:angel_dress_acheteur/Interface/favoris.dart';

import 'package:angel_dress_acheteur/Interface/menu.dart';

import 'package:angel_dress_acheteur/Interface/mon_compte.dart';

//import 'package:angel_dress_acheteur/Outils/constantes.dart'; 

//import 'package:angel_dress_acheteur/Interface/details_produits.dart';

import 'package:angel_dress_acheteur/Outils/bottomAppBarApp.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import 'package:firebase_core/firebase_core.dart'

class Accueil extends StatefulWidget {

  const Accueil({ Key key }) : super(key: key);

  @override 
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {

  TabController _tabController;

static const _kTabPages = <Widget>[
    Center(child: Accueil()),
    Center(child: Favoris()),
    Center(child: Menu()),
    Center(child: MyAccount())
  ];

  @override 
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    //return Scaffold(body: Text('test'));
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child:
              AppBarCustomer()),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    child:
                  TabsNavigation(),)
                ),
              ],),
           body: Center(
             child: Column(
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.only(top: 20),
                   child: Icon(
                     FontAwesomeIcons.slidersH,
                     size: icons_size,
                     color: general_color,
                   ),
                 ),
                 DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Container(
          child: Column(
            children: <Widget>[
              const Divider(color: Colors.orange,),
              Expanded(
                child: TabBarView(                                                                                                                                                                                                                                                                                         
                  children: _kTabPages,
                )
              )
            ],
          ),
      ))   
           ],
           ),
       ),
        bottomNavigationBar: BottomAppBarApp(),
    );
  }
}
