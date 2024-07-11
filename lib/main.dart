import 'package:flutter/material.dart';
import 'package:project_1/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple, // Ensuring the primary color is consistent
      ),
      routes: {
        "/": (context) => LoginPage(),
        "home": (context) => HomePage(),
        "/login": (context) => LoginPage(),




      },
    );
  }
}
