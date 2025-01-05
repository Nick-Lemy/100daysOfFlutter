import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final Color bg = Color.fromRGBO(28, 29, 47, 1);
final Color co = Color.fromRGBO(47, 43, 60, 1);
final TextStyle bigNum = TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold);
final TextStyle smallNum = TextStyle(color: Colors.white, fontSize: 16);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                genderWidget(icon: Icons.male, title: 'MALE'),
                genderWidget(icon: Icons.female, title: 'FEMALE')
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: co,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: smallNum,
                    ),
                    Text(
                      '20',
                      style: bigNum,
                    ),
                    Slider(
                      value: 0.2,
                      onChanged: (a) {
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              bottomWidgets(title: 'WEIGHT', number: 40),
              bottomWidgets(title: 'AGE', number: 20),
            ],
          ))
        ],
      ),
      bottomNavigationBar: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        shape: LinearBorder(),
        child: Text(
          'CALCULATE',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}

Expanded genderWidget({required IconData icon, required String title}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: co,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 140,
              color: Colors.white,
            ),
            Text(
              title,
              style: smallNum,
            )
          ],
        ),
      ),
    ),
  );
}

Expanded bottomWidgets({required String title, required int number}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: co, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: smallNum,
            ),
            Text(
              number.toString(),
              style: bigNum,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsetsDirectional.all(16),
                    shadowColor: Colors.white,
                    backgroundColor: Color.fromRGBO(82, 83, 99, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsetsDirectional.all(16),
                    shadowColor: Colors.white,
                    backgroundColor: Color.fromRGBO(82, 83, 99, 1),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
