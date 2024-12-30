import 'package:flutter/material.dart';
import 'barre.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                ColoredBar(color: Colors.red, noteNumber: 1,),
                ColoredBar(color: Colors.orange, noteNumber: 2,),
                ColoredBar(color: Colors.yellow, noteNumber: 3,),
                ColoredBar(color: Colors.green, noteNumber: 4,),
                ColoredBar(color: Colors.teal, noteNumber: 5,),
                ColoredBar(color: Colors.blue, noteNumber: 6,),
                ColoredBar(color: Colors.purple, noteNumber: 7,),
              ],
            ),
          ),
        ));
  }
}

