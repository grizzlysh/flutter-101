import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pesan Untukmu",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.9,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: AssetImage("images/pattern3.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                          image: AssetImage("images/graduate.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Selamat\n Wisuda Sarjana",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // color: Color(0xFFF56D5D),
                                color: Color.fromRGBO(218, 165, 32, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Soon on ",
                                    style: TextStyle(
                                      color: Color.fromRGBO(218, 165, 32, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "March 18, 2020",
                                    style: TextStyle(
                                      // color: Color(0xFFF56D5D),
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                              child: Row(
                                children: <Widget>[
                                  Spacer(flex: 10),
                                  Icon(
                                    Icons.thumb_up,
                                    size: 18,
                                    color: Color.fromRGBO(218, 165, 32, 1),
                                  ),
                                  Spacer(flex: 1),
                                  Text("99",
                                      style: TextStyle(
                                        color: Color.fromRGBO(218, 165, 32, 1),
                                      )),
                                  Spacer(flex: 5),
                                  Icon(
                                    Icons.comment,
                                    size: 18,
                                    color: Color.fromRGBO(218, 165, 32, 1),
                                  ),
                                  Spacer(flex: 1),
                                  Text("888",
                                      style: TextStyle(color: Colors.black)),
                                  Spacer(flex: 10)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
