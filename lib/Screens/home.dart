import 'package:angel_dress/Functions/Splash_screen/const.dart';
import 'package:angel_dress/Model/User.dart';
import 'package:angel_dress/Screens/Product_screen.dart';
import 'package:angel_dress/Services/db.dart';
import 'package:angel_dress/Services/facebook_service.dart';
import 'package:angel_dress/widgets/circle_icon.dart';
import 'package:angel_dress/widgets/tab-view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Services/auth_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserM userm;
  final userg = FirebaseAuth.instance.currentUser;
  // final userf = logg().isLoggedIn;
  final userf = LoginWithFacebook().user;
  AuthService auth = AuthService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

          toolbarOpacity: 0.1,
          bottom: const TabBar(
            indicatorColor: MainColor,
            labelColor: Colors.black,
            tabs: [
              Text("Tout"),
              Text("Vetements"),
              Text("Accessoires"),
            ],
          ),
          title: const Text('Logo', style: TextStyle(color: Colors.red),),
          actions: [
                Center(
                  child: Row(
                      children: [
                        CircleIcons(
                            icon: Icon(
                              FontAwesomeIcons.search,
                              color: MainColor,
                              size: 20,
                            ),
                            onPressed: null,
                            CircleColors: Colors.grey[200]),
                        SizedBox(
                          width: 15,
                        ),
                        CircleIcons(
                            icon: Icon(
                              FontAwesomeIcons.shoppingCart,
                              color: MainColor,
                              size: 20,
                            ),
                            onPressed: null,
                            CircleColors: Colors.grey[200]),
                        SizedBox(
                          width: 15,
                        ),
                        CircleIcons(
                            icon: Icon(
                              FontAwesomeIcons.signOutAlt,
                              color: MainColor,
                              size: 20,
                            ),
                            onPressed: () async{
                              await auth.signOut();
                            },
                            CircleColors: Colors.grey[200]),
                        SizedBox(width: 15,)
                      ],
                    ),
                ),

                // CircleIcons(
                //     icon: Icon(
                //       FontAwesomeIcons.search,
                //       color: MainColor,
                //     ),
                //     onPressed: null,
                //     CircleColors: Colors.grey[200]),
                // CircleIcons(
                //     icon: Icon(
                //       FontAwesomeIcons.shoppingCart,
                //       color: MainColor,
                //     ),
                //     onPressed: null,
                //     CircleColors: Colors.grey[200]),
                // CircleIcons(
                //     icon: Icon(
                //       FontAwesomeIcons.signOutAlt,
                //       color: MainColor,
                //     ),
                //     onPressed: null,
                //     CircleColors: Colors.grey[200]),
          ],
          toolbarHeight: 140,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            bodyContent,
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: bottomNavigationBar,
            ),
            const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],

          ),
          // CustomScrollView(
          //   slivers: <Widget>[
          //     const SliverAppBar(
          //       pinned: true,
          //       expandedHeight: 150,
          //       flexibleSpace: FlexibleSpaceBar(
          //         title: Text('Item Title'),
          //       ),
          //     ),
          //     SliverGrid(
          //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //         maxCrossAxisExtent: 250.0,
          //         mainAxisSpacing: 8.0,
          //         crossAxisSpacing: 8.0,
          //         childAspectRatio: 1.0,
          //       ),
          //       delegate: SliverChildBuilderDelegate(
          //             (BuildContext context, int index) {
          //           return Container(
          //             alignment: Alignment.center,
          //             color: Colors.blue[100 * (index % 10)],
          //             child: Text('Grid Item $index'),
          //           );
          //         },
          //         childCount: 10,
          //       ),
          //     ),
          //     SliverFixedExtentList(
          //       itemExtent: 50.0,
          //       delegate: SliverChildBuilderDelegate(
          //             (BuildContext context, int index) {
          //           return Container(
          //             alignment: Alignment.center,
          //             color: Colors.red[100 * (index % 10)],
          //             child: Text('List Item $index'),
          //           );
          //         },
          //         childCount: 10,
          //       ),
          //     ),
          //   ],
          // ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            children: <Widget>[
                    ProductScreen(),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue[200],
                child: Text("hello"),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue[300],
                child: Text("hello"),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue[400],
                child: Text("hello"),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue[500],
                child: Text("hello"),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue[600],
                child: Text("hello"),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue[700],
                child: Text("hello"),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue[800],
                child: Text("hello"),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue[900],
                child: Text("hello"),
              ),
            ],
          ),
            // Center(
            //   child:
            //   GridView.count(
            //     primary: false,
            //     padding: const EdgeInsets.only(bottom: 60),
            //     crossAxisSpacing: 18,
            //     mainAxisSpacing: 18,
            //     crossAxisCount: 2,
            //     scrollDirection: Axis.vertical,
            //     children: [
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //       ProductScreen(),
            //     ],
            //   ),
            // ),
        ],),
      ),
    );
    // Column(
    //   children: [
    //     Container(
    //       alignment: Alignment.topRight,
    //       margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Container(
    //             child: Text('LOGO'),
    //           ),
    //           SizedBox(
    //             width: 130.0,
    //           ),
    //           CircleIcons(
    //               icon: Icon(
    //                 FontAwesomeIcons.search,
    //                 color: MainColor,
    //               ),
    //               onPressed: null,
    //               CircleColors: Colors.grey[200]),
    //           CircleIcons(
    //               icon: Icon(
    //                 FontAwesomeIcons.shoppingCart,
    //                 color: MainColor,
    //               ),
    //               onPressed: null,
    //               CircleColors: Colors.grey[200]),
    //           CircleIcons(
    //               icon: Icon(
    //                 FontAwesomeIcons.signOutAlt,
    //                 color: MainColor,
    //               ),
    //               onPressed: null,
    //               CircleColors: Colors.grey[200]),
    //         ],
    //       ),
    //     ),
    //     Row(
    //       children: [
    //         IconButton(icon: Icon(FontAwesomeIcons.slidersH, color: MainColor,), onPressed: null)
    //       ],
    //     ),
    //     TabView(),
    //   ],
    // ),
    // );
  }

  Widget get bodyContent {
    return Container(color: Colors.white);
    // return Container(color: Colors.grey);
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
      child: BottomNavigationBar(
        backgroundColor: MainColor,
          type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home), title: Text('Accueil')),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.solidHeart), title: Text('Favoris')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.slidersH), title: Text('Menu')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userAlt), title: Text('Profil')),
        ],
        // unselectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
      ),
    );
  }
}
