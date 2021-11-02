import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//card widget
//untuk mengelompokkan sekumpulan data yang berkaitan

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            "AppBar Example",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffde1f1f),
                  Color(0xffa824bf),
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
              image: DecorationImage(
                image: AssetImage('images/pattern2.png'),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.airline_seat_individual_suite, "Rebahan"),
              buildCard(Icons.audiotrack, "Spotify"),
              buildCard(Icons.headset, "Headset"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
              elevation: 5,
              child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Icon(iconData, color: Colors.amberAccent,)),
                  Text(text),
                ],
              ),
            );
  }
}
