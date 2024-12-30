import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<int> dices = [1, 2, 3, 4, 5, 6];
List<int> dices2 = [1, 2, 3, 4, 5, 6];

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
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          modifyNumber();
                        });
                      },
                      child: Image.asset(
                        'images/dice${dices[0]}.png',
                        height: 150,
                        color: Colors.red,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          modifyNumber();
                        });
                      },
                      child: Image.asset(
                        'images/dice${dices2[0]}.png',
                        height: 150,
                        color: Colors.red,
                      )),
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
  dices2.shuffle();
  dices.shuffle();
}
