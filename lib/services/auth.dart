//Sign In Anonymously
//Register Using email, password
//Sign in using email, password
//sign out

import 'dart:async';
import 'dart:math';
import 'package:auth_test/models/userModel.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  // Firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel? _userWithFirebaseUI(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // Create a stream for checking the auth changes
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userWithFirebaseUI);
  }

  // Sign In Anonymously
  Future<UserModel?> signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userWithFirebaseUI(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  //Sign in With email and Password
  Future registerWithEmailPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userWithFirebaseUI(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
