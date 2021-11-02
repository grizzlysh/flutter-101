import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      // indicatorColor: Colors.amber,
      indicator: BoxDecoration(
          color: Colors.pink[200],
          border: Border(top: BorderSide(color: Colors.purple, width: 5))),
      tabs: <Widget>[
        Tab(icon: Icon(Icons.comment), text: "Comments"),
        Tab(child: Image(image: AssetImage('images/midoriya.jpg'))),
        Tab(icon: Icon(Icons.laptop)),
        Tab(text: 'Midoriya')
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                color: Colors.pink[600],
                child: myTabBar,
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text('Tab 1'),
              ),
              Center(
                child: Text('Tab 2'),
              ),
              Center(
                child: Text('Tab 3'),
              ),
              Center(
                child: Text('Tab 4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
