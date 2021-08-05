import 'package:flutter/material.dart';

class ToutPage extends StatefulWidget {
  const ToutPage({ Key key }) : super(key: key);

  @override
  _ToutPageState createState() => _ToutPageState();
}

class _ToutPageState extends State<ToutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('TOUS VOS VETEMENTS ICI'),
    );
  }
}