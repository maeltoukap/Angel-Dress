import 'package:flutter/material.dart';

class Panier extends StatefulWidget {
  const Panier({ Key key }) : super(key: key);

  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text('ACCESS'),
      ),
    );
  }
}