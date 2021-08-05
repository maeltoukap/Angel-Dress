//
// import 'package:flutter/material.dart';
//
// class Home3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade50,
//       appBar: AppBar(
//         title: Text('Home Page'),
//         leading: Icon(Icons.menu),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Text(
//               "Items",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             height: 150,
//             margin: EdgeInsets.only(top: 15),
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 8,
//               itemBuilder: (BuildContext context, int index) {
//                 return _itemList(context);
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
//             child: Text(
//               "Categories",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//           ),
//           SizedBox(height: 10),
//           Container(
//             width: double.infinity,
//             height: 150,
//             margin: EdgeInsets.only(top: 15),
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 5,
//               itemBuilder: (BuildContext context, int index) {
//                 return _categoryList(context);
//               },
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             color: Colors.grey.shade300,
//             height: 60.0,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//               child: Row(
//                 children: <Widget>[
//                   Text(
//                     "Suggested products",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                   ),
//                   Spacer(),
//                   InkWell(
//                     onTap: () {
//                       print("");
//                     },
//                     child: Text("View all"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 4.0),
//           ...[1, 2, 3, 4, 5, 6, 7].map(
//                 (product) => ProductListItem(
//               /*onPressed: () {},*/
//             ),
//           ),
//           const SizedBox(height: 10.0),
//         ],
//       ),
//     );
//   }
//
//   Widget _categoryList(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.grey,
//               image: DecorationImage(
//                 image: AssetImage('image/img_2.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             alignment: Alignment.center,
//             margin: EdgeInsets.symmetric(horizontal: 10),
//             width: 150,
//             height: 150,
//           ),
//           Positioned(
//             bottom: 0,
//             left: 10,
//             right: 10,
//             child: Container(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 8.0,
//                 horizontal: 16.0,
//               ),
//               color: Colors.black87,
//               child: Text(
//                 "Item",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 18.0,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _itemList(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Column(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.black12,
//                 image: DecorationImage(
//                     image: AssetImage('image/img_2.png'), fit: BoxFit.cover)),
//             alignment: Alignment.center,
//             margin: EdgeInsets.symmetric(horizontal: 10),
//             width: 100,
//             height: 100,
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text("Tables")
//         ],
//       ),
//     );
//   }
// }
//
// class ProductListItem extends StatelessWidget {
//   // final Function onPressed;
//   //
//   // const ProductListItem({/*Key? key, required this.onPressed*/}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
//       child: MaterialButton(
//         padding: const EdgeInsets.all(0),
//         elevation: 0.5,
//         color: Colors.white,
//         clipBehavior: Clip.antiAlias,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         onPressed: /*onPressed as void Function()?*/(){},
//         child: Row(
//           children: <Widget>[
//             Ink(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 image: DecorationImage(
//                   image: AssetImage('image/img_2.png'),
//                   fit: BoxFit.cover,
//                   alignment: Alignment.center,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.min,
//                           children: <Widget>[
//                             Text("Item"),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Text("Details",
//                                 style: TextStyle(
//                                     color: Colors.blue,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold))
//                           ],
//                         ),
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.shopping_cart),
//                         onPressed: () {
//                           print('tapped');
//                         },
//                       )
//                     ],
//                   )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
