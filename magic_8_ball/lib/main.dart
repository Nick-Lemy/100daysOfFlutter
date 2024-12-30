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
        title: 'Flutter Demo',
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _number = 1;
  void _randomizeNumber() {
    setState(() {
      _number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Magic Ball',
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        ),
        body: Center(
          child: TextButton(
            onPressed: _randomizeNumber,
            child: Image.asset('images/ball$_number.png'),
          ),
        ),
      ),
    );
  }
}
