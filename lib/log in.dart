import 'package:flutter/material.dart';
import 'package:my_wallet/home.dart';

class LoginScren extends StatefulWidget {
  LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
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
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextField(
                    controller: passwordcontroller,
                    decoration: const InputDecoration(hintText: "password"))),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  if (usernamecontroller.text == "oun" &&
                      passwordcontroller.text == "123") {
                    //go to main scren
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: ((context) => const HomePage())),
                        (route) => false);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("wrong passwowrd or username")),
                    );
                  }
                },
                child: const Text("log in")),
          ],
        ),
      ),
    );
  }
}
