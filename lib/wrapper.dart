import 'package:auth_test/screens/authentication/authenticate.dart';
import 'package:auth_test/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}
