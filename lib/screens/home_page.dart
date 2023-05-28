import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181C20),
      body: Column(
        children: [
          ///LOGO
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60, left: 20),
                child: Image(
                  image: AssetImage("assets/images/spotify.png"),
                  width: 50,
                  height: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60, left: 10),
                child: Text(
                  "Spotify",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
              )
            ],
          ),

          /// SIZED BOX
          const SizedBox(height: 100),

          ///TEXT
          const Padding(
            padding: EdgeInsets.only(top: 60, right: 80),
            child: Text(
              "Millions of songs.\nFree on Spotify",
              style: TextStyle(
                  color: Color(0xFFC9C9C9),
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
          ),

          ///TEXT-2
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 210),
            child: Text(
              "Continue with",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),

          ///BUTTON PHONE NUMBER
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF1D9146),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "PHONE NUMBER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ///BUTTON FACE BOOK
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff202427),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "FACEBOOK",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ///BUTTON EMAIL
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, LoginPage.id),
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "EMAIL",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          /// SIZED BOX
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
