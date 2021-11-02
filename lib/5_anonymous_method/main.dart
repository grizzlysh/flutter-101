import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Thank God It's Friday!";

  //anonymous method = digunakan sekali saja
  void tombolDitekan(){
    setState(() {
      message = "Happy weekend!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                child: Text("Click me!"),
                onPressed: tombolDitekan,
                //anonymous
                // onPressed: () {
                //   setState(() {
                //     message = "Happy weekend!";
                //   });
                // },
              )
            ],
          ),
        ),
      ),
    );
  }
}
