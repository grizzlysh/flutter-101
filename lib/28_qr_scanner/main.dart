import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = 'QR Code Data';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Scan'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                data,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              RaisedButton(
                child: Text("Scan QR"),
                onPressed: () {
                  scanQR();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void scanQR() async {

    // bool result = await Permission. .checkPermission (Permission.Camera);
    // PermissionStatus status = PermissionStatus.notDetermined;

    // if (!result) {
    //   status = await SimplePermissions.requestPermission(Permission.Camera);
    // }

    // if (result || status == PermissionStatus.authorized) {
    //   String scanResult = await scan();
    //   setState(() {
    //     data = scanResult;
    //   });
    // }

    final PermissionHandler _permissionHandler = PermissionHandler();
    var result = await _permissionHandler.requestPermissions([PermissionGroup.camera]);
    if (result[PermissionGroup.camera] == PermissionStatus.granted) {
      String scanResult = await scan();
      setState(() {
        data=scanResult;
      });
    }
  }
}
