import 'package:flutter/material.dart';
import 'package:spotify_project/screens/home_page.dart';
import 'package:spotify_project/screens/login_page.dart';
import 'package:spotify_project/screens/logo_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        LoginPage.id: (context) => const LoginPage(),
        LogoPage.id: (context) => const LogoPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
