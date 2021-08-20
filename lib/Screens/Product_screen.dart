import 'package:angel_dress/widgets/rounded-button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0),
          ),
      padding: const EdgeInsets.all(10),
      // color: Colors.red,
      child: Column(
children: [
  Container(
    margin: EdgeInsets.only(top: 10.0),
    height: 130.0,
            width: 130.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1521503862198-2ae9a997bbc9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60'),
              ),
            ),
          ),
],
      ),
    );
        // MaterialApp(
        // home: Scaffold(
        //   body: Container(
        //     color: Colors.grey[200],
        //     child: Center(
        // child: MouseRegion(
        //   onEnter: (value) {
        //     setState(() {
        //       _controller.forward();
        //     });
        //   },
        //   onExit: (value) {
        //     setState(() {
        //       _controller.reverse();
        //     });
        //   },
        //   child: Container(
    //     Container(
    //   height: 255,
    //   // height: _animation.value,
    //   width: 150.0,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(20.0),
    //   ),
    //   child: Column(
    //     children: [
    //       Container(
    //         margin: EdgeInsets.only(
    //           top: 10.0,
    //         ),
    //         height: 130.0,
    //         width: 130.0,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(15.0),
    //           image: DecorationImage(
    //             fit: BoxFit.cover,
    //             image: NetworkImage(
    //                 'https://images.unsplash.com/photo-1521503862198-2ae9a997bbc9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60'),
    //           ),
    //         ),
    //       ),
    //       Flexible(
    //         // child: AnimatedOpacity(
    //         // opacity: _animation.value == 260.0 ? 1.0 : 0.0,
    //         // duration: Duration(milliseconds: 200),
    //         child: Container(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Row(
    //                   children: [
    //                     Flexible(
    //                       child: Text(
    //                         'Chaussons joy',
    //                         style: TextStyle(fontSize: 13.0),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Flexible(
    //                 child: Container(
    //                   padding: EdgeInsets.symmetric(horizontal: 10.0),
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         mainAxisAlignment: MainAxisAlignment.center,
    //                         children: [
    //                           Flexible(
    //                             child: Text('5000 XAF'),
    //                           ),
    //                           // Flexible(
    //                           //   child: Row(
    //                           //     children: [
    //                           //       starIcon(Colors.yellow[700]),
    //                           //       starIcon(Colors.yellow[700]),
    //                           //       starIcon(Colors.yellow[700]),
    //                           //       starIcon(Colors.yellow[700]),
    //                           //       starIcon(Colors.grey[200]),
    //                           //     ],
    //                           //   ),
    //                           // ),
    //                         ],
    //                       ),
    //                       Flexible(
    //                         child: Container(
    //                           height: 30.0,
    //                           width: 30.0,
    //                           decoration: BoxDecoration(
    //                             color: Colors.transparent,
    //                             borderRadius: BorderRadius.circular(12.0),
    //                           ),
    //                           child: Material(
    //                             color: Colors.grey[200],
    //                             shape: RoundedRectangleBorder(
    //                               borderRadius: BorderRadius.circular(12.0),
    //                             ),
    //                             child: InkWell(
    //                               onTap: () {},
    //                               child: Center(
    //                                 child: Icon(
    //                                   FontAwesomeIcons.solidHeart,
    //                                   color: Colors.red,
    //                                   size: 15.0,
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               Flexible(
    //                 child: Container(
    //                   margin: EdgeInsets.only(bottom: 10.0),
    //                   width: 130.0,
    //                   height: 30.0,
    //                   decoration: BoxDecoration(
    //                     color: Colors.blue,
    //                     borderRadius: BorderRadius.circular(12.0),
    //                     boxShadow: [
    //                       BoxShadow(
    //                         color: Colors.blue[200],
    //                         offset: Offset(0.0, 10.0),
    //                         spreadRadius: -5.0,
    //                         blurRadius: 10.0,
    //                       ),
    //                     ],
    //                   ),
    //                   // child: Material(
    //                   //   color: Colors.transparent,
    //                   //   shape: RoundedRectangleBorder(
    //                   //     borderRadius: BorderRadius.circular(12.0),
    //                   //   ),
    //                   child: RoundedButton(
    //                     buttonText: "Ajouter Au panier",
    //                   ),
    //                   // child: InkWell(
    //                   //   onTap: () {},
    //                   //   child: Center(
    //                   //     child: Text(
    //                   //       'Ajouter au panier',
    //                   //       style: TextStyle(
    //                   //           fontSize: 8.0,
    //                   //           color: Colors.white),
    //                   //     ),
    //                   //   ),
    //                   // ),
    //                   // ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
    //     ),
    //   ),
    // ),
    // );
  }
}
