import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row n Column"),
        ),
        body: Column( //kebawah
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[ //kumpulan widget
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Text 1"),
                Text("Text 2"), 
                Text("Text 3"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
