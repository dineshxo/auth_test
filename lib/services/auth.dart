//Sign In Anonymously
//Register Using email, password
//Sign in using email, password
//sign out

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
//firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

//Sign In Anonymously
  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
