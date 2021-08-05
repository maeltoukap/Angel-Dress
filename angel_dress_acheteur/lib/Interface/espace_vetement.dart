import 'package:flutter/material.dart';

class VetementPage extends StatefulWidget {
  const VetementPage({ Key key }) : super(key: key);

  @override
  _VetementPageState createState() => _VetementPageState();
}

class _VetementPageState extends State<VetementPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('UNIQUEMENT LES VETEMENT ICI'),
    );
  }
}