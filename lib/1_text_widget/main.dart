import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Center(
            child: Container(
                color: Colors.indigo[300],
                width: 150,
                height: 70,
                child: Text(
                  "this is nothing, i prefer playing dota ",
                  // maxLines: 2,
                  // overflow: TextOverflow.ellipsis, //kelebihan kata menjadi ...
                  // softWrap: false,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ))),
      ),
    );
  }
}
