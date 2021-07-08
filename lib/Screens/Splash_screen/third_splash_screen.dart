import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Functions/Splash_screen/const.dart';

class ThirdSplashScreen extends StatelessWidget {
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
                image: AssetImage('assets/4848498.jpg'),
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
                    width: 450.0,
                    child: Center(
                      child: Text(
                        "Devenez vendeur, proposez vos produits a une communautée de visteur, vendez ce que vous n'utilisez plus.",
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
                          "Passer",
                          style: skipStyle,
                        ),
                        onPressed: () =>
                            MyNavigator.fourthSplashScreenNavigator(context)
                      // duration: Duration(milliseconds: 300),
                      // curve: Curves.easeIn),
                    ),
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
//       Stack(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Image.asset(
//                 'assets/032255.png',
//                 fit: BoxFit.contain,
//                 alignment: Alignment.center,
//                 // height: MediaQuery.of(context).size.height,
//               ),
//               Expanded(
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: FlatButton(
//                       child: Text("Skip",
//                         style: TextStyle(
//                           color: Colors.red,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18.0,),),
//                       onPressed: () => MyNavigator.fourthSplashScreenNavigator(context)
//                     // duration: Duration(milliseconds: 300),
//                     // curve: Curves.easeIn),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       );
//   }
// }
//   Scaffold(
//   backgroundColor: Colors.black,
//   body: ListView(
//     children: <Widget>[
//       Container(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 400.0),
//           child: Center(
//             child: Text(
//               'Passez des commandes et faites vous livrer chez vous',
//               style: TextStyle(
//                 color: Color(0xffdb7032),
//                 fontSize: 30.0,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(top: 350.0, left: 450.0),
//         child: ListTile(
//           title: Padding(
//             padding: const EdgeInsets.only(),
//             child: Text('skip',
//               style: TextStyle(fontSize: 25.0,color: Colors.blue),
//             ),
//           ),
//           onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => fourthSplashScreen())),
//         ),
//       ),
//     ],
//   ),
// );
//   }
// }
