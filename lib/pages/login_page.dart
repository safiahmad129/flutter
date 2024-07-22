import 'package:flutter/material.dart';
import 'package:project_1/pages/home_page.dart';
import 'package:project_1/utils/routes.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Scaffold(body: LoginPage()),
      MyRoutes.homeRoute: (context) => HomePage(),
    },
  ));
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
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
            "WELCOME $name",
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
                  padding: const EdgeInsets.symmetric(horizontal: 500.0, vertical: 10.0), // Adjust padding to fit the screen
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "ENTER USERNAME",
                      labelText: "USERNAME",
                    ),
                    onChanged: (value) {
                    name = value;
                    setState(() {});
                    },
                    
                  ),
                ),
                SizedBox(height: 20), // Add space between the text fields
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 500.0, vertical: 10.0), // Adjust padding to fit the screen
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "ENTER PASSWORD",
                      labelText: "PASSWORD",
                    ),

                  ),

                ),
                SizedBox(height: 20),

                InkWell(
                  onTap: () async{
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1 ),
                    width:changebutton ? 50: 120,
                    height: 40,
                    alignment: Alignment.center,
                    
                    child: changebutton? Icon(Icons.done,color: Colors.white,): Text("LOGIN",
                    style: TextStyle(color: Colors.white),
                    
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)
                  
                  
                    ),
                  ),
                )
                


                //ElevatedButton(
                //  onPressed: () {
                //    Navigator.pushNamed(context, MyRoutes.homeRoute);
                //  },
                //  child: Text("LOGIN"),
                //),
              ],
            ),
          ),
          Spacer(), // Adds space at the bottom
        ],
      ),
    );
  }
}