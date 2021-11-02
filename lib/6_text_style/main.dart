import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Style"),
        ),
        body: Center(
          child: Text(
            "Ini adalah text GOJEK facebook",
            style: TextStyle(
              fontFamily         : "NeoSans",
              fontStyle          : FontStyle.italic,
              fontSize           : 30,
              decoration         : TextDecoration.lineThrough,
              decorationColor    : Colors.redAccent,
              decorationThickness: 3,
              decorationStyle    : TextDecorationStyle.wavy,
            ),
          ),
        ),
      ),
    );
  }
}
