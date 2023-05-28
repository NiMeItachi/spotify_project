import 'package:flutter/material.dart';

class LogoPage extends StatefulWidget {
  static const String id = "logo_page";
  const LogoPage({Key? key}) : super(key: key);

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF181C20),
      body: Center(
        child: Image(
            alignment: Alignment.center,
            image: AssetImage("assets/images/spotify.png"),
            width: 150,
            height: 150
        ),
      ),
    );
  }
}
