import 'package:flutter/material.dart';

class ChoiseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: _Choise(),
        //Here you can set what ever background color you need.
        backgroundColor: Colors.white,
      ),
    );
  }
}

class _Choise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.topCenter, child: Image.asset('assets/032355.png', height: 350.0,)),
      ],
    );
  }
}
