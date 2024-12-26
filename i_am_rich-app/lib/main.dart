import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 21, fontWeight:FontWeight.bold ),
          backgroundColor: Colors.yellow[700],
        ),
        body: Center(child: Image(image: AssetImage('images/diamant.png'))),
      ),
    ),
  );
}
