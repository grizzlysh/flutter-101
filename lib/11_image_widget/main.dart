import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.amberAccent,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage("images/luffy.jpg"),
              // image: NetworkImage(
              //     "https://i.ytimg.com/vi/X-tLe-_YWfA/maxresdefault.jpg"),
              // fit: BoxFit.none, //ukuran asli
              // fit: BoxFit.cover, //disesuaikan tapi menuhin
              // fit: BoxFit.fill //maksa press tidak original
              fit: BoxFit.contain, //disesuaikan didalam container
              // repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
