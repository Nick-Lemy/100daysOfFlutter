import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizzler_flutter/components//elements.dart';

class QuizzlerApp extends StatefulWidget {
  const QuizzlerApp({super.key});

  @override
  State<QuizzlerApp> createState() => _QuizzlerAppState();
}

class _QuizzlerAppState extends State<QuizzlerApp> {

  Padding buildButton(
      {required Color color, required String title, required bool checker}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color,
            minimumSize: Size(double.infinity, 60),
            shape: LinearBorder()),
        onPressed:  () {
          if (index < questions.length - 1) {
            setState(() {
              if (questions[index].answer == checker) {
                icons.add(iconTrue);
                score++;
              } else {
                icons.add(iconFalse);
              }
              index++;
            });
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                shape: LinearBorder(),
                title: Text('Score'),
                content: Text('${score.toString()} out of ${icons.length}'),
                actions: <Widget>[
                  TextButton(
                    onPressed: SystemNavigator.pop,
                    child: const Text('Exit'),
                  ),
                  TextButton(
                    onPressed: (){
                      setState(() {
                        score = 0;
                        index = 0;
                        icons =[];
                      });
                      Navigator.pop(context, 'OK');
                    },
                    child: const Text('Restart'),
                  ),
                ],
              ),
            );
          }
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    questions[index].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButton(
                      color: Colors.green, title: 'True', checker: true),
                  buildButton(
                      color: Colors.red, title: 'False', checker: false),
                  Row(
                    children: icons,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}