import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//list view != column
//column, error saat melebihi layar
//list view, bisa scroll

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // construct
  // _MyAppState() {
  //   for (int i = 0; i < 25; i++) {
  //     widgets.add(Text(
  //       "Data " + (i + 1).toString(),
  //       style: TextStyle(fontFamily: "NeoSans", fontSize: 35),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan List View"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              //penempatan dibagi rata
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text("Data ke-" + counter.toString(),
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: "NeoSans",
                          )));
                      counter++;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                    
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
