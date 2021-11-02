import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.redAccent;
  Color color2 = Colors.amberAccent;
  Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dragable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    //membungkus widget yg gak ada width dan height
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 3, //bayangan
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    //membungkus widget yg gak ada width dan height
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 3, //bayangan
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                )
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true, //diterima gak
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              }, //kalo diterima ngapain
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                        ),
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                        ),
                      );
              }, //method untuk dipakai widget dragtarget
            )
          ],
        ),
      ),
    );
  }
}
