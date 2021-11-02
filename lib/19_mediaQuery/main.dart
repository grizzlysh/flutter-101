import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
//Media Query
//1. untuk mendapatkan ukuran layar user
//2. orientasi layar, (landscape/potrait)

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),
      body:
          //if
          (MediaQuery.of(context).orientation == Orientation.portrait)
              //maka
              ? Column(
                  children: generateContainer(),
                )
              //else
              : Row(
                  children: generateContainer(),
                ),
    );
  }

  List<Widget> generateContainer() {
    return <Widget>[
      Container(color: Colors.redAccent, width: 100, height: 100),
      Container(color: Colors.yellowAccent, width: 100, height: 100),
      Container(color: Colors.blueAccent, width: 100, height: 100),
    ];
  }
}
