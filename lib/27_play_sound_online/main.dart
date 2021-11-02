import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;

  String durasi = "00:00:00";

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Play Music"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  // playSoundLocal();
                  playSound(
                      "https://www.mediacollege.com/downloads/sound-effects/nature/forest/rainforest-ambient.mp3");
                },
                child: Text(
                  "Play",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.pink[400],
              ),
              RaisedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text(
                  "Pause",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.pink[400],
              ),
              RaisedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text(
                  "Stop",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.pink[400],
              ),
              RaisedButton(
                  onPressed: () {
                    resumeSound();
                  },
                  child: Text(
                    "Resume",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.pink[400]),
              Text(
                durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
