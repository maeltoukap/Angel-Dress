import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Functions/Splash_screen/const.dart';
// import '../../Screens/inscription_screen.dart';

class FourthSplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return       Stack(
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
                image: AssetImage('assets/494640.png'),
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
                        'Inscrivez vous et accedez a notre catalogue de produit',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Color(textColor),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    heightFactor: 3.0,
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                        child: Text(
                          "Commencer",
                          style: skipStyle,
                        ),
                        onPressed: () =>
                            MyNavigator.loginScreenNavigator(context)
                      // duration: Duration(milliseconds: 300),
                      // curve: Curves.easeIn),
                    ),
                  ),
                  //       Expanded(
                  //         child: Align(
                  //           alignment: Alignment.bottomRight,
                  //           child: FlatButton(
                  //               child: Text("Skip",
                  //                   style: TextStyle(
                  //                       color: Colors.red,
                  //                       fontWeight: FontWeight.bold,
                  //                       fontSize: 18.0,),),
                  //               onPressed: () => MyNavigator.thirdSplashScreenNavigator(context)
                  //               // duration: Duration(milliseconds: 300),
                  //               // curve: Curves.easeIn),
                  //               ),
                  //         ),
                  //       ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
//       Scaffold(
//       backgroundColor: Colors.black,
//       body: ListView(
//         children: <Widget>[
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 400.0),
//               child: Center(
//                 child: Text(
//                   "Devenez acheteur et proposez vos produits a une large communautée de visteur, vendez ce que vous n'utilisez plus",
//                   style: TextStyle(
//                     color: Color(0xffdb7032),
//                     fontSize: 30.0,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 350.0, left: 430.0),
//             child: ListTile(
//               title: Padding(
//                 padding: const EdgeInsets.only(),
//                 child: Text('commencer',
//                   style: TextStyle(fontSize: 25.0,color: Colors.blue),
//                 ),
//               ),
//               onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => Inscription())),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
