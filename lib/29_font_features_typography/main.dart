import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Typography")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // https://www.youtube.com/redirect?v=RPmCQe9eoh4&event=video_description&redir_token=QUFFLUhqbGwydzJhWWYzbk9XS3Z4VmFiUjE2MnlpeVBLUXxBQ3Jtc0tsWVdmOGRnXzRPM1QxMDJ5MkVPZVpfYW9zUGpvZHE4cEpaWExtSjE3dzViV2k1amJpOTJ0d3pTZ2s1WWJSMks0YmZPeTE2R0MzbHNYYVV1TmVOYXZEMlloRUhDcjFZTU5QQ05lVm43MFZ1d1BOTlN6TQ%3D%3D&q=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Ftypography%2Fopentype%2Fspec%2Ffeaturelist
              Text(
                "Contoh 01 (tanpa apapun)",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Contoh 02 (small caps)",
                style: TextStyle(fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
              Text(
                "Contoh 3 1/2 (small caps & frac)",
                style: TextStyle(fontSize: 20, fontFeatures: [FontFeature.enable('smcp'), FontFeature.enable('frac')]),
              ),
              Text(
                "Contoh 3 1/2 (small caps & frac)",
                style: TextStyle(fontSize: 20, fontFamily: "NeoSans", fontFeatures: [FontFeature.enable('smcp'), FontFeature.enable('frac')]),
              ),
              Text(
                "Contoh NeoSans 19 (tanpa apapun)",
                style: TextStyle(fontSize: 20, fontFamily: "NeoSans"),
              ),
              Text(
                "Contoh NeoSans 19 (old style)",
                style: TextStyle(fontSize: 20, fontFamily: "NeoSans", fontFeatures: [FontFeature.oldstyleFigures()]),
              ),
              Text(
                "Contoh Facebook 5 (tanpa apapun)",
                style: TextStyle(fontSize: 20, fontFamily: "Facebook"),
              ),
              Text(
                "Contoh Facebook 5 (stylistic)",
                style: TextStyle(fontSize: 20, fontFamily: "Facebook", fontFeatures: [FontFeature.stylisticSet(5)]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
