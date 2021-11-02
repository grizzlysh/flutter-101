import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //mau pasang text field atau ambil data dari text field, perlu controller
  TextEditingController textField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlueAccent[100],
                  filled: true,
                  //kalo pake prefix/suffix , gak boleh pake prefixText/suffixText
                  suffix: Container(width: 5, height: 5, color: Colors.redAccent,),

                  icon: Icon(Icons.alternate_email), //icon di luar
                  prefixIcon: Icon(Icons.email), //icon di dalam
                  prefixText: "Email: ",
                  prefixStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                  ),
                  labelText: "Email Anda",
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w700,
                  ),
                  hintText: "Masukkan Email Anda",
                  hintStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontStyle: FontStyle.italic,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                maxLength: 7,
                obscureText: true, //buat input password
                onChanged: (value) {
                  setState(() {});
                },
                controller: textField,
              ),
              Text(textField.text),
            ],
          ),
        ),
      ),
    );
  }
}
