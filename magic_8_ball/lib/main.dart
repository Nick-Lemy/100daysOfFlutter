import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Magic ball',
        home: BallPage());
  }
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              'Ask Me Anything',
            ),
            centerTitle: true,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          ),
          body: Center(child: Ball())),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _number = 1;
  void _randomizeNumber() {
    setState(() {
      _number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: _randomizeNumber,
        child: Image.asset('images/ball$_number.png'),
      ),
    );
  }
}
