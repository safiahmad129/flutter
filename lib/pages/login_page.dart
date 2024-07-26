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
  final _formKey = GlobalKey<FormState>();
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(
                "assets/images/undraw_Loving_story_re_wo5x.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Spacer(),
          Text(
            "WELCOME $name",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 2, 96, 143),
            ),
          ),
          SizedBox(height: 0),
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 500.0, vertical: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "ENTER USERNAME",
                        labelText: "USERNAME",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "USERNAME CANNOT BE EMPTY";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                  ),
                  SizedBox(height: 0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 500.0, vertical: 10.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "ENTER PASSWORD",
                        labelText: "PASSWORD",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "PASSWORD CANNOT BE EMPTY";
                        } else if (value.length < 6) {
                          return "PASSWORD LENGTH SHOULD BE AT LEAST 6";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          changeButton = true;
                        });

                        await Future.delayed(Duration(seconds: 1));
                        await Navigator.pushNamed(context, MyRoutes.homeRoute);
                        setState(() {
                          changeButton = false;
                        });
                      }
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 120,
                      height: 40,
                      alignment: Alignment.center,
                      child: changeButton ? Icon(Icons.done, color: Colors.white) : Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
