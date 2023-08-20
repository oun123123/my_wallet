import 'package:flutter/material.dart';

class LoginScren extends StatefulWidget {
  LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "asset/images.png",
              height: 200,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextField(
                    controller: usernamecontroller,
                    decoration: const InputDecoration(hintText: "user name"))),
            Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: TextField(
                    controller: password,
                    decoration: const InputDecoration(hintText: "password"))),
          ],
        ),
      ),
    );
  }
}
