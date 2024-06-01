import 'package:auth_test/services/auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                dynamic result = await _auth.signInAnonymously();

                if (result == Null) {
                  print("Error - Sign in Anonymously");
                } else {
                  print("Signed In!");
                }
              },
              child: const Text("Login Anonymous"))
        ],
      ),
    );
  }
}
