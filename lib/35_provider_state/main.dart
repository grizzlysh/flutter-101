import 'package:flutter/material.dart';
import 'package:project_hussein/35_provider_state/application_color.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: (context, applicationColor, _) => Text(
                "Provider State Management",
                style: TextStyle(color: applicationColor.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) => AnimatedContainer(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    // color: Colors.lightBlue,
                    color: applicationColor.color,
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(margin: EdgeInsets.all(5), child: Text("Amber")),
                    Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Switch(
                        value: applicationColor.isLightBlue,
                        inactiveThumbColor: applicationColor.color,
                        // inactiveTrackColor: applicationColor.color,
                        onChanged: (newValue) {
                          applicationColor.isLightBlue = newValue;
                        },
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(5), child: Text("LightBlue"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
