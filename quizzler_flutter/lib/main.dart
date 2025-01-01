import 'package:flutter/material.dart';

Icon iconTrue = Icon(Icons.check, color: Colors.green, weight: 10);
Icon iconFalse = Icon(Icons.close, color: Colors.red, weight: 10);
List<Widget> icons = [];
List<Question> questions = [
  Question('Some cats are actually allergic to humans', true),
  Question('You can lead a cow down stairs but not up stairs.', false),
  Question('Approximately one quarter of human bones are in the feet.', true),
  Question('A slug\'s blood is green.', true),
  Question('Buzz Aldrin\'s mother\'s maiden name was "Moon".', true),
  Question('It is illegal to pee in the Ocean in Portugal.', true),
  Question(
      'No piece of square dry paper can be folded in half more than 7 times.',
      false),
  Question(
      'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
      true),
  Question(
      'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
      false),
  Question(
      'The total surface area of two human lungs is approximately 70 square metres.',
      true),
  Question('Google was originally called "Back rub".', true),
  Question(
      'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
      true),
  Question(
      'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
      true),
];

int index = 0;
void main() {
  runApp(const QuizzlerApp());
}

class QuizzlerApp extends StatefulWidget {
  const QuizzlerApp({super.key});

  @override
  State<QuizzlerApp> createState() => _QuizzlerAppState();
}

class _QuizzlerAppState extends State<QuizzlerApp> {
  Padding buildButton(
      {required Color color, required String title, required bool checker, required BuildContext context}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color,
            minimumSize: Size(double.infinity, 60),
            shape: LinearBorder()),
        onPressed: () {
          if (index < questions.length - 1) {
            setState(() {
              if (questions[index].answer == checker) {
                icons.add(iconTrue);
              } else {
                icons.add(iconFalse);
              }
              index++;
            });
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text('Score'),
                content: Text('3'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
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
                        color: Colors.green, title: 'True', checker: true, context: context),
                    buildButton(
                        color: Colors.red, title: 'False', checker: false, context: context),
                    Row(
                      children: icons,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question {
  String title;
  bool answer;
  Question(this.title, this.answer);
}