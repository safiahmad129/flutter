import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple, // Ensuring the primary color is consistent
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My First Flutter App',
          style: TextStyle(
            color: Colors.white, // Change the AppBar text color here
          ),
        ),
        backgroundColor: Color.fromARGB(255, 7, 204, 89), // Added missing comma
      ),
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
