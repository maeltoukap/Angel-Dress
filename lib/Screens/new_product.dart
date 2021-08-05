import 'dart:io';
import 'dart:async';

import 'package:angel_dress/ressources/Boutton.dart';
import 'package:angel_dress/ressources/variables.dart';
import 'package:angel_dress/screens/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import '../ressources/Boutton.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import '../ressources/fonctions.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
class NewProductScreen extends StatefulWidget {
  @override
  _NewProductScreenState createState() => _NewProductScreenState();
}

class _NewProductScreenState extends State<NewProductScreen> {

  List<String> lst = ["Neuf", "Recyclé"];
  String selectedIndex = "Neuf";

  void artState(String index) {
    setState(() {
      selectedIndex = index;
      print(index);
    });
  }

  Widget customRadio(String txt, String index) {
    return OutlineButton(
      onPressed: () => artState(index),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      borderSide: BorderSide(
          color: selectedIndex == index ? Color(Orange) : Colors.black38),
      child: Text(
        txt,
        style: GoogleFonts.montserrat(
            color: selectedIndex == index ? Color(Orange) : Colors.black38),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  String Cathegorie;

  // ignore: non_constant_identifier_names
  List Options = [
    "Vetements",
    "Chaussures",
    "Accessoires",
  ];

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

   bool Echange = false;
    String NomProduit;
    int QteProduit;
    String DescriptionProduit;
    int PrixProduit;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Nouvel Article",
          style: StyleTitre,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 0.0,
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  FlatButton(
                    color: Colors.black38,
                    onPressed: loadAssets,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      width: 350,
                      height: 200,
                      child:imagesArticles.isNotEmpty == false ?  Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Center(
                            child: FlatButton(
                          onPressed: loadAssets,
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.images,
                                color: Color(Orange),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Photos de l'article",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.0, color: Color(Orange)),
                              ),
                            ],
                          ),
                        )),
                      ): buildGridView(),
                    ),
                  ),
                  Expanded(
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cathegorie :",
                                style: Monserrat,
                              ),
                              DropdownButton(
                                hint: Text(
                                  "Cathegorie de l'article",
                                  style: GoogleFonts.montserrat(fontSize: 14.0),
                                ),
                                value: Cathegorie,
                                style: GoogleFonts.montserrat(
                                    fontSize: 14.0, color: Color(0xff707070)),
                                onChanged: (newCathegorie) {
                                  setState(() {
                                    Cathegorie = newCathegorie;
                                  });
                                },
                                // ignore: non_constant_identifier_names
                                items: Options.map((Cathegorie) {
                                  return DropdownMenuItem(
                                    value: Cathegorie,
                                    child: Text(Cathegorie),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nom de l'article :",
                                style: Monserrat,
                              ),
                              SizedBox(
                                width: 170.0,
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  onChanged: (e) => NomProduit = e,
                                  validator: (e) =>
                                      e.isEmpty ? "Champ vide" : null,
                                  decoration: InputDecoration(
                                    hintText: "Exemple : Chaussure Joy",
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Prix de l'article :",
                                style: Monserrat,
                              ),
                              SizedBox(
                                width: 170.0,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onChanged: (e) => PrixProduit = e as int,
                                  validator: (e) =>
                                      e.isEmpty ? "Champ vide" : null,
                                  decoration: InputDecoration(
                                    hintText: "Exemple : 1000 XAF",
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Statut de l'article",
                                style: Monserrat,
                              ),
                              customRadio(lst[0], "Neuf"),
                              customRadio(lst[1], "Recyclé"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Quantite disponibles :",
                                style: Monserrat,
                              ),
                              SizedBox(
                                width: 120.0,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onChanged: (e) => QteProduit = e as int,
                                  validator: (e) =>
                                      e.isEmpty ? "Champ vide" : null,
                                  decoration: InputDecoration(
                                    hintText: "Exemple : 10",
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Acceptez-vous les échanges ?",
                                style: Monserrat,
                              ),
                              StatefulBuilder(
                                builder:
                                    (BuildContext context, StateSetter setState) {
                                  return Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: Color(Orange),
                                    // hoverColor: Colors.green,
                                    // focusColor: MaterialStateProperty.resolveWith(getColor),
                                    value: Echange,
                                    onChanged: (bool value) {
                                      setState(() {
                                        Echange = value;
                                        print(Echange);
                                      });
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Description :",
                                    style: Monserrat,
                                  ),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  maxLength: 500,
                                  // cursorHeight: 300,
                                  keyboardType: TextInputType.text,
                                  onChanged: (e) => DescriptionProduit = e,
                                  validator: (e) =>
                                      e.isEmpty ? "Champ vide" : null,
                                  decoration: InputDecoration(
                                    hintText: "Decrivez votre produit",
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 8.0),
                            child: ElevatedButton(
                              onPressed: () async {
                                // if(keys.currentState.validate()){
                                //   print(QteProduit+" "+NomProduit+" viennent d'etre ajouter a la cathegorie"+Cathegorie);
                                //   // bool NewProduct = await NouvelArticle(QteProduit, NomProduit, Cathegorie);
                                //   if(NewProduct) Navigator.of(context).pop();

                                // }
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color(Orange),
                                  //// background
                                  onPrimary: Colors.black38,
                                  elevation: 11,
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          40.0)) // foreground
                                  ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.bookmark,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text("Enregistrer l'article",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 20.0, color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  List<Asset> imagesArticles = <Asset>[];

  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 1,
      scrollDirection: Axis.horizontal,
      children: List.generate(imagesArticles.length, (index) {
        Asset asset = imagesArticles[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: AssetThumb(
            asset: asset,
            width: 300,
            height: 300,
          ),
        );
      }),
    );
  }
  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 7,
        enableCamera: true,
        selectedAssets: imagesArticles,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "camera"),
        materialOptions: MaterialOptions(
          actionBarColor: "#db7032",
          actionBarTitle: "Angel Dress",
          allViewTitle: "All Images",
          useDetailsView: true,
          selectCircleStrokeColor: "#707070",
        ),
      );
    } on Exception {
    }
    if (!mounted) return;

    setState(() {
      imagesArticles = resultList;
    });
  }
}
