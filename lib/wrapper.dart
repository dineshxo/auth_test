import 'package:auth_test/models/userModel.dart';
import 'package:auth_test/screens/authentication/authenticate.dart';
import 'package:auth_test/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<UserModel?>(context);

    if (_user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
