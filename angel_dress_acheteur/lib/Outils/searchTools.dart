import 'package:angel_dress_acheteur/Interface/details_produits.dart';

import 'package:flutter/material.dart';

import 'constantes.dart';

// class SearchBarr extends StatefulWidget {
//   const SearchBarr({ Key? key }) : super(key: key);

//   @override
//   _SearchBarrState createState() => _SearchBarrState();
// }

// class _SearchBarrState extends State<SearchBarr> {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class Search extends SearchDelegate {

   @override
   List<Widget> buildActions(BuildContext context){
     return<Widget>[
       IconButton(
         icon: Icon(Icons.close),
         iconSize: icons_size,
         onPressed: () {
           query = "";
         },
       )
     ];
     //throw UnimplementedError();
   }

   @override
   Widget buildLeading(BuildContext context){
     return IconButton(
       icon: Icon(Icons.arrow_back),
       onPressed: () {
         Navigator.pop(context);
       }
     );
     //throw UnimplementedError();
   }

   String selectedResult;

   @override
   Widget buildResults(BuildContext context){
     return Container(
       child: Center(
         child: Text(selectedResult),
       ),
     );
     //throw UnimplementedError();
   }

   final List<String> listProducts;
   Search(this.listProducts);
   List<String> recentList = ['items 1', 'items 2'];

   @override
   Widget buildSuggestions(BuildContext context){
     List<String> suggestionList = [];
     query.isEmpty
     ? suggestionList = recentList
     : suggestionList.addAll(listProducts.where((element) => element.contains(query),));

     return ListView.builder(
       itemCount: suggestionList.length,
       itemBuilder: (context, index){
         return ListTile(
           title: Text(suggestionList[index]),
           onTap: (){
             Navigator.push(context,
             MaterialPageRoute(builder: (context) => DetailsProducts())
             );
           },
         );
       },
     );
     //throw UnimplementedError();
   }
 }