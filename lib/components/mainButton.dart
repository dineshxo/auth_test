import 'package:auth_test/constants/colours.dart';
import 'package:flutter/material.dart';

class mainButton extends StatelessWidget {
  const mainButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
            color: mainYellow, borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
