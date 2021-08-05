import 'package:angel_dress/ressources/variables.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ProduitPanier extends StatelessWidget {
  const ProduitPanier({
    Key key,

    @required this.nomProduit,
    @required this.quantiteProduit,
    @required this.imgProduit,
    @required this.prixProduit,
    // ignore: non_constant_identifier_names
    this.SupProduitPanier,
  }) : super(key: key);

  final String nomProduit, imgProduit;
  final int quantiteProduit, prixProduit;
  // ignore: non_constant_identifier_names
  final VoidCallback SupProduitPanier;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( bottom: 0.0),
      child: Card(
        color: Colors.black38.withOpacity(0.001),
        // padding: EdgeInsets.all(0),
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        // onPressed: (){},
        child: Row(
          children: <Widget>[
            Ink(
              height: 70.0,
              width: 60.0,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(imgProduit),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:ListTile(
                        title: Text(nomProduit),
                        subtitle: Text(prixProduit.toString()+' XAF'),
                      ),
                    ),
                    Container(
                      child: Text("x"+ quantiteProduit.toString()),
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.trash, color: Color(0xffdb7032),
                        size: 15.0,),
                      onPressed: SupProduitPanier,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
