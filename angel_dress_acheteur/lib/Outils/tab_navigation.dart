import 'package:angel_dress_acheteur/Interface/espace_accessoire.dart';

import 'package:angel_dress_acheteur/Interface/espace_nutrition.dart';

import 'package:angel_dress_acheteur/Interface/espace_vetement.dart';

import 'package:angel_dress_acheteur/Interface/tous_les_produits.dart';

import 'package:flutter/material.dart';

class TabsNavigation extends StatefulWidget {
  const TabsNavigation({ Key key }) : super(key: key);

  @override
  _TabsNavigationState createState() => _TabsNavigationState();
}

class _TabsNavigationState extends State<TabsNavigation> {
  @override
  Widget build(BuildContext context) {
    final _tabsPages = <Widget>[
      const Center(child: ToutPage(),),
      const Center(child: VetementPage(),),
      const Center(child: AccessoirePage(),),
      const Center(child: NutritionPage(),),
    ];

    final _tabsScreen = <Tab>[
      const Tab(text: 'Tout',),
      const Tab(text: 'Vetement',),
      const Tab(text: 'Accessoire',),
      const Tab(text: 'Nutrition',),
    ];

    return DefaultTabController(
      length: _tabsScreen.length,
      child: Container(
        child: TabBarView(
          children: _tabsPages,
        ),
      ),
    );
  }
}