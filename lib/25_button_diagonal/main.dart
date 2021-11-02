import 'package:flutter/material.dart';
import '../25_button_diagonal/colorful_button.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Colorful Buttons')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ColorfulButton(Colors.pink, Colors.indigo, Icons.adb),
              ColorfulButton(Colors.red, Colors.blue, Icons.hourglass_empty),
              ColorfulButton(Colors.yellow, Colors.black, Icons.import_export),
              ColorfulButton(Colors.amber, Colors.purple, Icons.bluetooth),
            ],
          ),
        ),
      ),
    );
  }
}
