import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stack and Align"),
        ),
        body: Stack(
          children: <Widget>[
            // background
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1, child: Container(color: Colors.white)),
                        Flexible(
                            flex: 1, child: Container(color: Colors.black45)),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1, child: Container(color: Colors.black45)),
                        Flexible(
                            flex: 1, child: Container(color: Colors.white)),
                      ],
                    )),
              ],
            ),
            // list-view text
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Hussein Faisol itu adeknya Muhamad Ali Taufiq yang paling pintar",
                          style: TextStyle(fontSize: 40)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Hussein Faisol itu adeknya Muhamad Ali Taufiq yang paling pintar",
                          style: TextStyle(fontSize: 40)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Hussein Faisol itu adeknya Muhamad Ali Taufiq yang paling pintar",
                          style: TextStyle(fontSize: 40)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Hussein Faisol itu adeknya Muhamad Ali Taufiq yang paling pintar",
                          style: TextStyle(fontSize: 40)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Hussein Faisol itu adeknya Muhamad Ali Taufiq yang paling pintar",
                          style: TextStyle(fontSize: 40)),
                    ),
                  ],
                )
              ],
            ),
            // button
            Align(
              alignment: Alignment(0, 0.75), //custom
              // alignment: Alignment.bottomCenter,
              child: RaisedButton(
                child: Text("My Button"),
                color: Colors.amber,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
