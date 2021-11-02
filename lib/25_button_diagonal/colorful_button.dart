import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class ColorfulButton extends StatefulWidget {
  Color mainColor, secondColor;
  IconData iconData;

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secondColor, iconData);

  ColorfulButton(this.mainColor, this.secondColor, this.iconData);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPressed = false;
  Color mainColor, secondColor;
  IconData iconData;

  _ColorfulButtonState(this.mainColor, this.secondColor, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        //klik button
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        //klik diangkat di button
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        //klik tapi di geret keluar
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          shadowColor: (isPressed) ? secondColor : mainColor,
          borderRadius: BorderRadius.circular(15),
          elevation: (isPressed) ? 10 : 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: (isPressed) ? secondColor : mainColor,
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(
                        // Icons.hourglass_empty,
                        iconData,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
