import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<User> get user async {
    final user = await FirebaseAuth.instance.currentUser;
    return user;
  }

  Future<bool> signUp(String email, String pass) async {
    try {
      final result =
          auth.signInWithEmailAndPassword(email: email, password: pass);
      if (result.user != null) return true;
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> signIn(String email, String pass) async {
    try {
      final result =
          auth.createUserWithEmailAndPassword(email: email, password: pass);
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
