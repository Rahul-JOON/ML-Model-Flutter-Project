// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
        centerTitle: true,
        title: Text(
          'AI Flutter Model Login',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromARGB(255, 0, 0, 70)),
        ),
        backgroundColor: Color.fromARGB(255, 28, 181, 224),
      ),
      body: Center(
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: const [
                  Colors.white,
                  Color.fromARGB(255, 7, 101, 133)
                ])),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 80),
                    child: Image.asset(
                      'images/ai_logo.png',
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hoverColor: Colors.blue,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        filled: true,
                        suffixIcon: Icon(Icons.mail_rounded),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Email / Username',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hoverColor: Colors.blue,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        filled: true,
                        suffixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        icon: Icon(Icons.arrow_circle_right_rounded),
                        label: Text('Sign In'),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(130, 40),
                            textStyle: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                            primary: Color.fromARGB(255, 28, 181, 224),
                            elevation: 30)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_circle_left_rounded),
                        label: Text('Sign UP'),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(130, 40),
                            textStyle: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                            primary: Color.fromARGB(255, 0, 0, 70),
                            elevation: 30)),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
