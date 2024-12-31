import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Expanded buildColoredBar({required Color color, required int noteNumber}){
    final player = AudioPlayer();
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          await player.setAsset('assets/note$noteNumber.wav');
          await player.play();
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                buildColoredBar(color: Colors.red, noteNumber: 1,),
                buildColoredBar(color: Colors.orange, noteNumber: 2,),
                buildColoredBar(color: Colors.yellow, noteNumber: 3,),
                buildColoredBar(color: Colors.green, noteNumber: 4,),
                buildColoredBar(color: Colors.teal, noteNumber: 5,),
                buildColoredBar(color: Colors.blue, noteNumber: 6,),
                buildColoredBar(color: Colors.purple, noteNumber: 7,),
              ],
            ),
          ),
        ));
  }
}

