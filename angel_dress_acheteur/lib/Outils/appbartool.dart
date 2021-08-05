import 'package:angel_dress_acheteur/Outils/searchTools.dart';
import 'package:flutter/material.dart';

import 'package:angel_dress_acheteur/Interface/panier.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:angel_dress_acheteur/Outils/constantes.dart';

//import 'package:angel_dress_acheteur/Interface/accueil.dart';

class AppBarCustomer extends StatefulWidget {
  const AppBarCustomer({ Key key }) : super(key: key);

  @override
  _AppBarCustomerState createState() => _AppBarCustomerState();
}

class _AppBarCustomerState extends State<AppBarCustomer> {

  final List<String> listItem = List.generate(500, (index) => 'items $index' 
        'Products $index' 'name \, quantity $index');

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
       Row(
          crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                Stack(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.baby, color: general_color, size: 30.0,
                    ),
                  Padding(
                    padding: EdgeInsets.only(left: 140.0, top: 10.0),
                    child: CircleAvatar(
                             backgroundColor: Colors.black12,
                             radius: 20.0,
                            child:
                         IconButton(icon: const Icon(FontAwesomeIcons.search),        
                         tooltip: 'Search',       
                          color: general_color,       
                          //padding: EdgeInsets.all(30.0),        
                          iconSize: icons_size,      
                         onPressed: () {       
                           showSearch(context: context, delegate: Search(listItem));       
                       }
        
                     ),
                           ),),
                           Padding(
                              padding: EdgeInsets.only(left: 200.0, top: 10.0),
                              child:
                    CircleAvatar(
                      backgroundColor: Colors.black12,
                     child: IconButton(icon: const Icon(FontAwesomeIcons.shoppingCart), color: general_color, iconSize: icons_size,
                     //padding: EdgeInsets.all(20.0),
                     onPressed: () {       
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context) => Panier())
                       );
                     }
                     ),),),
                     Padding(
                       padding: EdgeInsets.only(left: 260.0, top: 10.0),
                       child:
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        child:
                     IconButton(icon: const Icon(FontAwesomeIcons.exchangeAlt), color: general_color, iconSize: icons_size,
                     //padding: EdgeInsets.all(40.0),
                        onPressed: () {}
                     ),),),
                      ],
               ),
               ]
             ));
          
      //  AppBar(
      //              backgroundColor: couleur,
      //              leading: const Icon(FontAwesomeIcons.baby, color: icons_color, size: icons_size,
      //              ),
      //              title: Text('ANGEL DRESS'),
      //              toolbarHeight: 60.0,
      //              elevation: 0.0,
      //              actions: <Widget>[
      //                Expanded(child:
           
    
  }
}