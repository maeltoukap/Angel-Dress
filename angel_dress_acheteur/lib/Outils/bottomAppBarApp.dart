import 'package:flutter/material.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

//import 'package:angel_dress_acheteur/Interface/accueil.dart';

//import 'package:angel_dress_acheteur/Interface/favoris.dart';

//import 'package:angel_dress_acheteur/Interface/menu.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart'

//import 'package:angel_dress_acheteur/Interface/mon_compte.dart';

class BottomAppBarApp extends StatefulWidget {
  const BottomAppBarApp({ Key key }) : super(key: key);

  @override
  _BottomAppBarAppState createState() => _BottomAppBarAppState();
}

class _BottomAppBarAppState extends State<BottomAppBarApp> {
  //with SingleTickerProviderStateMixin{
    
  TabStyle _tabStyle = TabStyle.flip;

  static const _kPages = <String, IconData>{
  'Accueil' : Icons.home,
  'Favoris' : Icons.favorite_outline,
  'Menu' : Icons.menu,
  'Profil' : Icons.account_box,
  };
 
  // @override 
   // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: _kTabPages.length, vsync: this,);
  // }

  @override
  Widget build(BuildContext context) {
     return 
    ConvexAppBar.badge(
            /*badge:*/const <int, dynamic>{3: ''},
            style: _tabStyle,
            //cornerRadius: 10.0,
            backgroundColor: Colors.orange,
            items: <TabItem>[
              for(final entry in _kPages.entries)
              TabItem(icon: entry.value, title: entry.key),
            ],
            onTap: (int i) => print('click index=$i')
          //),
         // ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
//}