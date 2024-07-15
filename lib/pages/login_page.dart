import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60), // Add padding to push the image upwards
            child: SizedBox(
              width: 300, // Set the desired width
              height: 300, // Set the desired height
              child: Image.asset(
                "assets/images/undraw_Loving_story_re_wo5x.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Spacer(), // Adds space between the image and the text
          Text(
            "WELCOME",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 2, 96, 143),
            ),
          ),
          SizedBox(height: 10), // Add some space below the welcome text
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // Centers the column within the available space
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 500.0,vertical: 10.0), // Add padding to center the text fields
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "ENTER USERNAME",
                      labelText: "USERNAME",
                    ),
                  ),
                ),
                SizedBox(height: 20),
                 // Add space between the text fields
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 500.0,vertical: 10.0), // Add padding to center the text fields
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "ENTER PASSWORD",
                      labelText: "PASSWORD",
                    ),
                    
                  ),
                 
                ),
                SizedBox(
                  height: 20,
                  ),
                  ElevatedButton(onPressed:() {
                    print("hi safi ahmad");
                  }, child: Text("LOGIN")),
              ],
            ),
          ),
          Spacer(), // Adds space at the bottom
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: LoginPage(),
    ),
  ));
}
