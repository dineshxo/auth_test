import 'package:auth_test/screens/authentication/login.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
