import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: Container(
          color: Colors.red[900],
          margin: EdgeInsets.fromLTRB(
              5, 10, 15, 20), //jarak container dengan widget luar container
          padding: EdgeInsets.only(
              bottom: 20,
              top: 20), //jarak container dengan widget didalam container
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.amberAccent,
                      Colors.indigoAccent,
                    ])),
            // color: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}
