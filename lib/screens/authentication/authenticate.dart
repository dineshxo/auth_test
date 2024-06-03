import 'package:auth_test/screens/authentication/login.dart';
import 'package:auth_test/screens/authentication/register.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Authenticate> {
  bool signInPage = true;

  //toggle pages
  void togglePages() {
    setState(() {
      signInPage = !signInPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (signInPage == true) {
      return Login(
        toggle: togglePages,
      );
    } else
      return Register(toggle: togglePages);
  }
}
