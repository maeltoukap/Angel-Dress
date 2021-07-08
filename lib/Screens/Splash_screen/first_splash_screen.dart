import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart ';
import 'package:google_fonts/google_fonts.dart';

import 'second_splash_screen.dart';
import '../../Functions/Splash_screen/const.dart';

class FirstSplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<FirstSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SecondSplashScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Colors.black12, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ).createShader(bounds),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/mediamodifier-PKdcZz-o6bw-unsplash.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 550.0,
                    // width: 450.0,
                    child: Center(
                      child: Text(
                        'Bienvenu chez Angel Dress',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(textColor),
                        ),
                      ),
                    ),
                  ),
                  SpinKitFadingCircle(
                    itemBuilder: (BuildContext context, int index) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//   Scaffold(
//   // backgroundColor: Color(SplashbgColor),
//   body: Column(
//     children: <Widget>[
//       Center(
//           child: Image.asset(''),
//       ),
//       Container(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 400.0),
//           child: Center(
//             child: Text(
//               'Bienvenu chez Angel Dress',
//               style: TextStyle(
//                 color: Color(textColor),
//                 fontSize: 30.0,
//               ),
//             ),
//           ),
//         ),
//       ),
//       Container(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 350.0, left: 450.0),
//           child: ListTile(
//             title: Padding(
//               padding: const EdgeInsets.only(),
//               child: Text('skip',
//                 style: TextStyle(fontSize: 25.0,color: Colors.blue),
//               ),
//             ),
//             onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => secondSplashScreen())),
//           ),
//         ),
//       ),
//     ],
//   ),
// );
