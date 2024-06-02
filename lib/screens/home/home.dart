import 'package:auth_test/components/mainButton.dart';
import 'package:auth_test/constants/colours.dart';
import 'package:auth_test/constants/styles.dart';
import 'package:auth_test/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthServices _user = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
            backgroundColor: bgColor,
            title: const Text(
              "Home",
              style: appBarText,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: IconButton(
                    onPressed: () async {
                      await _user.signOut();
                    },
                    icon: const Icon(
                      Icons.logout_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
              )
            ]),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/dineshxo.jpg"),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Welcome Chief!",
                style: bodyText.copyWith(
                    fontSize: 28, fontWeight: FontWeight.w400),
              ),
              Text(
                "This is a test on Firebase Authentication. Testing Sign in anonymously , Sign in with email password, Sign in with Google . @dineshxo",
                style: bodyText.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
