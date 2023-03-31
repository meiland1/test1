import 'package:flutter/material.dart';
import 'pages/profile_page.dart';
import 'pages/home_page.dart';
import 'pages/intake_page.dart';

void main() {
  runApp(const ChiroApp());
}

class ChiroApp extends StatelessWidget {
  const ChiroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chiro App",
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/intake': (context) => const IntakePage(),
      },
    );
  }
}
