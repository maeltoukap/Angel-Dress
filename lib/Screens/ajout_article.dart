// File _imgFile;
// final imagePicker = ImagePicker();
// _openGallery(BuildContext context)async{
//   final imgFile = await imagePicker.getImage(source: ImageSource.gallery);
//   this.setState(() {
//     _imgFile = File(imgFile.path);
//   });
//   Navigator.of(context).pop();
// }
// _openCamera(BuildContext context) async{
//   // final imgFile<XFile> = await imagePicker.getImage(source: ImageSource.gallery);
//   final imgFile = await imagePicker.getImage(source: ImageSource.camera);
//   this.setState(() {
//     _imgFile = File(imgFile.path);
//   });
//   Navigator.of(context).pop();
// }
//
// //Boite de dialogue camera
// Future<void> _showDialog(BuildContext context){
//   // ignore: missing_return
//   return showDialog(context: context,builder: (BuildContext context){
//     return AlertDialog(
//       title: Text("Choississez votre source", style: Monserrat,),
//       content: SingleChildScrollView(
//         child: ListBody(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GestureDetector(
//                 child: Row(
//                   children: [
//                     Icon(FontAwesomeIcons.camera, color: Color(Orange),),
//                     SizedBox(width: 10.0),
//                     Text("Camera", style: Monserrat,),
//                   ],
//                 ),
//                 onTap: (){_openCamera(context);},
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GestureDetector(
//                 child: Row(
//                   children: [
//                     Icon(FontAwesomeIcons.image, color: Color(Orange)),
//                     SizedBox(width: 10.0),
//                     Text("Gallery", style: Monserrat,),
//                   ],
//                 ),
//                 onTap: (){_openGallery(context);},
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   });
// }