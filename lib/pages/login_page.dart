import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text("LOGIN PAGE",style: TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 9, 205, 240),
          fontWeight: FontWeight.bold,

        ),
        ),
    )
    );
  }
}