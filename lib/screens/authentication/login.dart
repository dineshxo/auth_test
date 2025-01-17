import 'package:auth_test/components/mainButton.dart';
import 'package:auth_test/constants/colours.dart';
import 'package:auth_test/constants/styles.dart';
import 'package:auth_test/services/auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final Function toggle;

  const Login({super.key, required this.toggle});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthServices _auth = AuthServices();

  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          "Login",
          style: appBarText,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
                child: Image.asset(
              "assets/man.png",
              height: 160,
            )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: textFieldDecoration,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Email to continue';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration:
                            textFieldDecoration.copyWith(hintText: "Password"),
                        validator: (value) {
                          if (value!.length < 8) {
                            return 'Enter should contain more than 8 characters';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              error,
              style: const TextStyle(color: Colors.red),
            ),
            const Text(
              "Login With Google",
              style: bodyText,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Image.asset(
                "assets/google.png",
                height: 40,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Do not Have an Account?",
                  style: bodyText,
                ),
                TextButton(
                    onPressed: () {
                      widget.toggle();
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: mainYellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ))
              ],
            ),
            mainButton(
              text: "Sign in",
              onTap: () async {
                dynamic result =
                    await _auth.signInWithEmailPassword(email, password);
                if (result == null) {
                  print("Wrong Credentials!");
                  setState(() {
                    error = "Error - User Credentials doesn't match!";
                  });
                }
              },
            ),
            const SizedBox(
              height: 15,
            ),
            mainButton(
              text: "Sign in Anonymously",
              onTap: () async {
                dynamic result = await _auth.signInAnonymously();

                if (result == Null) {
                  print("Error - Sign in Anonymously");
                } else {
                  print("Signed In!");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
