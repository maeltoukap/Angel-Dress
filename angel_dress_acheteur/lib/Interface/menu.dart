import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({ Key key }) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Essai')),
    );
  }
}