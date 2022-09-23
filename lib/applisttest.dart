// ignore_for_file: prefer_const_constructors
import 'package:mlmodel/apps_events.dart';
import 'package:mlmodel/apps_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: const applisttest()));

class applisttest extends StatelessWidget {
  const applisttest();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Device apps demo')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Object>(
                        builder: (BuildContext context) => AppsListScreen()),
                  );
                },
                child: Text('Applications list')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Object>(
                        builder: (BuildContext context) => AppsEventsScreen()),
                  );
                },
                child: Text('Applications events'))
          ],
        ),
      ),
    );
  }
}
