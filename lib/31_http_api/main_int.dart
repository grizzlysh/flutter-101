import 'package:flutter/material.dart';
import 'package:project_hussein/31_http_api/post_result_model.dart';
import 'package:project_hussein/31_http_api/user_model_int.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.created
                  : "Data Tidak Ada"),
              RaisedButton(
                onPressed: () {
                  // post api
                  PostResult.connectToAPI("Badu", "Dokter").then((value) {
                    postResult = value;
                    setState(() {});
                    //ketika data di update post result tidak null
                  });

                  //get api
                  // User.connectToAPI("3").then((value) {
                  //   user = value;
                  //   setState(() {});
                  // });
                },
                child: Text("POST"),
              ),
              Text((user != null)
                  ? user.id.toString() + " | " + user.name
                  : "Data Tidak Ada"),
              RaisedButton(
                onPressed: () {
                  //get api
                  User.connectToAPI(2).then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
