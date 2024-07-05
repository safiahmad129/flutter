import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First Flutter App',
            style: TextStyle(
              color: Colors.white, // Change the AppBar text color here
            ),
          ),
          backgroundColor: Colors.black, // Added missing comma
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
        
      ),
    );
  }
}