import 'package:flutter/material.dart';

import 'logo_page.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login_page";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void signIn() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    debugPrint("CLICKED");
    if (email == "nimeitachi@gmail.com" && password == "123") {
      debugPrint("You're in");
      Navigator.pushNamed(context, LogoPage.id);
    } else {
      debugPrint("Wrong email address or password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// LOGIN TEXT
          const Padding(
            padding: EdgeInsets.only(top: 100, right: 225, bottom: 25),
            child: Text(
              "Log in",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 40),
            ),
          ),

          /// EMAIL
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            width: 400,
            color: Colors.white,
            child: TextField(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              controller: emailController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: InputBorder.none,
                isCollapsed: true,
                hintText: "jane@example.com",
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          /// PASSWORD
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            width: 400,
            color: Colors.white,
            child: TextField(
              obscureText: true,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              controller: passwordController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: InputBorder.none,
                isCollapsed: true,
                hintText: "password",
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          /// BUTTON
          GestureDetector(
            onTap: signIn,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: 400,
              color: Colors.black,
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
