import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<int> dices = [1, 2, 3, 4, 5, 6];
List<int> dices2 = [1, 2, 3, 4, 5, 6];
int dice = dices[0];
int diceS = dices2[1];

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
                        'images/dice$dice.png',
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
                        'images/dice$diceS.png',
                        height: 150,
                        color: Colors.red,
                      )),
                ],
              ),
              // FloatingActionButton(onPressed: (){
              //   setState(() {
              //     dices.shuffle();
              //     dice = dices[0];
              //     dice_s = dices[1];
              //   });
              // },)
            ],
          ),
        ),
      ),
    );
  }
}

void modifyNumber() {
  dices2.shuffle();
  diceS = dices2[0];
  dices.shuffle();
  dice = dices[0];
}
