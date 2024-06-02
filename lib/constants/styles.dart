import 'package:auth_test/constants/colours.dart';
import 'package:flutter/material.dart';

const TextStyle appBarText =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
const TextStyle bodyText = TextStyle(
  color: Colors.white,
  fontSize: 16,
);

InputDecoration textFieldDecoration = InputDecoration(
  hintText: 'Enter your email',
  hintStyle: TextStyle(color: Color.fromARGB(255, 134, 134, 134)),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50.0),
    borderSide: const BorderSide(color: mainYellow, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50.0),
    borderSide: const BorderSide(color: mainYellow, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50.0),
    borderSide: const BorderSide(color: Colors.red, width: 2),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50.0),
    borderSide: const BorderSide(color: Colors.red, width: 2),
  ),
);
