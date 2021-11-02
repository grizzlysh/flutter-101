import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Clipper"),
        ),
        body: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Image(
              width: 300,
              image: AssetImage("images/luffy.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  
  @override
  // untuk mendapatkan clippernya
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 2, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }
  
  @override
  //mengecek apakah widget perlu di potong ulang gak?
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

  
}
