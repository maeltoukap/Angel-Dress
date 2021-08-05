import 'package:angel_dress/Services/db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../Model/User.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<User> get user async {
    final user = FirebaseAuth.instance.currentUser;
    return user;
  }

  Future<bool> signUp(String name, String email, String username, int phone,
      String pass) async {
    try {
      final result = await auth.createUserWithEmailAndPassword(
          email: email, password: pass);
      if (result.user != null) {
        await DBServices().saveUser(UserM(
            id: result.user.uid,
            displayName: name,
            email: email,
            username: username,
            phone: phone,
            password: pass));
        return true;
      }

      return false;
    } catch (e) {
      return false;
    }
  }
  // Future<bool> signUp(String email, String pass, String username, String name) async {
  //   try {
  //     final result = await auth.createUserWithEmailAndPassword(
  //         email: email, password: pass);
  //     // final result =
  //     //     await auth.signInWithEmailAndPassword(email: email, password: pass);
  //     if (result.user != null) {
  //       await DBServices().saveUser(UserM(
  //           id: result.user.uid, name: name, email: email, username: username));
  //       return true;
  //     }
  //     ;
  //     return false;
  //   } catch (e) {
  //     return false;
  //   }
  // }

  Future<bool> signIn(String email, String pass) async {
    try {
      final result =
          await auth.signInWithEmailAndPassword(email: email, password: pass);
      // final result = await auth.createUserWithEmailAndPassword(
      //     email: email, password: pass);
      if (result.user != null) return true;
      return false;
    } catch (e) {
      return false;
    }
  }

  Future signOut() async {
    try {
      return auth.signOut();
    } catch (e) {
      return null;
    }
  }
}
