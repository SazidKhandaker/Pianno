import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final AudioPlayer player = AudioPlayer();
  Widget Soundbutton(
      {required Color color, required String x, required int nodenumber}) {
    return Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: color,
        ),
        child: TextButton(
            child: Text(
              '$x',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            onPressed: () {
              player.play(AssetSource('note$nodenumber.wav'));
            })
        // onPressed: () {
        //   player.play(AssetSource('note$nodenumber.wav'));
        //  print('note$nodenumber.wav');
        // });
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Pianno'),
            centerTitle: true,
            leading: Icon(Icons.android),
            actions: [
              Icon(Icons.piano),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Soundbutton(color: Colors.redAccent, x: 'A', nodenumber: 1),
              Soundbutton(color: Colors.purple, x: 'B', nodenumber: 2),
              Soundbutton(color: Colors.black12, x: 'C', nodenumber: 3),
              Soundbutton(color: Colors.amber, x: 'D', nodenumber: 4),
              Soundbutton(color: Colors.greenAccent, x: 'E', nodenumber: 5),
              Soundbutton(color: Colors.blueAccent, x: 'F', nodenumber: 6),
              Soundbutton(color: Colors.orangeAccent, x: 'G', nodenumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
