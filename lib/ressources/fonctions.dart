import 'package:angel_dress/ressources/variables.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io';
// import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

class Picker extends StatefulWidget {
  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  // File _image;
  // final imagePicker = ImagePicker();
  //
  // Future getImage() async{
  //   final image = await imagePicker.getImage(source: ImageSource.camera);
  //   setState(() {
  //     _image = File(image.path);
  //   });
  // }
File _imgFile;
  final imagePicker = ImagePicker();
   _openGallery(BuildContext context)async{
     final imgFile = await imagePicker.getImage(source: ImageSource.gallery);
     this.setState(() {
       _imgFile = File(imgFile.path);
     });
     Navigator.of(context).pop();
  }
  _openCamera(BuildContext context) async{
    final imgFile = await imagePicker.getImage(source: ImageSource.camera);
    this.setState(() {
      _imgFile = File(imgFile.path);
    });
    Navigator.of(context).pop();
  }

  //Boite de dialogue camera
  Future<void> _showDialog(BuildContext context){
    // ignore: missing_return
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text("Choississez votre source", style: Monserrat,),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.camera, color: Color(Orange),),
                      SizedBox(width: 10.0),
                      Text("Camera", style: Monserrat,),
                    ],
                  ),
                  onTap: (){_openCamera(context);},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.image, color: Color(Orange)),
                      SizedBox(width: 10.0),
                      Text("Gallery", style: Monserrat,),
                    ],
                  ),
                  onTap: (){_openGallery(context);},
              ),
              ),
            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera and Gallery", style: TextStyle(color: Colors.black38),),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child:  SizedBox(
            width: 100.0,height: 100.0,
            child: _imgFile == null ? Text ("No Image Selected") : Image.file(_imgFile))),
    floatingActionButton: FloatingActionButton(
      onPressed: (){_showDialog(context);},
      backgroundColor: Colors.white,
      child: Icon(Icons.camera, color: Colors.deepOrange,),
    ),
    );
  }
}
