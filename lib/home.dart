// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mlmodel/apps_list.dart';
import 'package:mlmodel/messages.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 28, 181, 224),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(25))),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 35),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.menu,
                        size: 35,
                      ),
                      Spacer(),
                      Icon(
                        Icons.person,
                        size: 35,
                      ),
                      Spacer(),
                      Icon(
                        Icons.settings,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.15, color: Colors.black))),
                //child: ListView(scrollDirection: Axis.horizontal, children: Icon(Icons.abc),),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(color: Colors.grey.shade300),
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Installed apps on device',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 150, child: AppsListScreen()),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(color: Colors.grey.shade300),
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Inbox Messages',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: inboxcontent(),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, 'authentication');
                },
                icon: Icon(Icons.arrow_back),
                label: Text('back'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
