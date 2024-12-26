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
      title: "Dragon Ball app",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Dragon Ball'),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        body: Image(image: NetworkImage('https://i.pinimg.com/originals/33/90/eb/3390eb3f1a29f9f088663a8a22e144dc.jpg')),
      backgroundColor: Colors.orange[800],
      ),
    );
  }
}
