import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


int dice1 = 1;
int dice2 = 1;


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Dicee App'),
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              modifyNumber();
                            });
                          },
                          child: Image.asset(
                            'images/dice$dice1.png',
                            color: Colors.red,
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              modifyNumber();
                            });
                          },
                          child: Image.asset(
                            'images/dice$dice2.png',
                            color: Colors.red,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void modifyNumber() {
  dice2 = Random().nextInt(6) + 1;
  dice1 = Random().nextInt(6) + 1;
}
