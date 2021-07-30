import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Model/User.dart';

class DBServices {
  final CollectionReference usercol =
      FirebaseFirestore.instance.collection("users");
  final CollectionReference carouselcol =
      FirebaseFirestore.instance.collection("carousel");
  final CollectionReference vehiculecol =
      FirebaseFirestore.instance.collection("vehicule");
  final CollectionReference commentcol =
      FirebaseFirestore.instance.collection("commentaires");

  Future saveUser(UserM user) async {
    try {
      await usercol.doc(user.id).set(user.toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future getUser(String id) async {
    try {
      final data = await usercol.doc(id).get();
      final user = UserM.fromJson(data.data());
      return user;
    } catch (e) {
      return false;
    }
  }
}