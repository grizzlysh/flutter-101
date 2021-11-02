import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
        color: Colors.pink[400],
        border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Switcher"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                child: myWidget,
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => RotationTransition(
                  turns: animation,
                  child: child,
                ),
              ),
              Switch(
                  activeColor: Colors.lime[800],
                  inactiveThumbColor: Colors.red[800],
                  inactiveTrackColor: Colors.red[200],
                  value: isON,
                  onChanged: (newvalue) {
                    isON = newvalue;
                    setState(() {
                      if (isON == true) {
                        // myWidget = SizedBox(
                        //   width: 200,
                        //   height: 200,
                        //   child: Center(
                        //     child: Text(
                        //       "Switch ON",
                        //       style: TextStyle(
                        //           color: Colors.purple,
                        //           fontWeight: FontWeight.w700,
                        //           fontSize: 20),
                        //     ),
                        //   ),
                        // );

                        myWidget = Container(
                          key: ValueKey(1),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.lightGreen[400],
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );
                      } else {
                        myWidget = Container(
                          key: ValueKey(2),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.pink[400],
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
