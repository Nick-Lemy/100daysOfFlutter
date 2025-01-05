import 'dart:math';

import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/elements.dart';

num? result;
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 150;
  int weight = 45;
  int age = 19;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toInt().toString(),
                          style: bigNum,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              ' cm',
                              style: smallNum,
                            ),
                          ],
                        )
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 300,
                      divisions: 300,
                      onChanged: (double value) {
                        setState(() {
                          height = value.floorToDouble();
                        });
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
              bottomWidgets(
                  title: 'WEIGHT',
                  number: weight,
                  onPressPlus: () {
                    if(weight >= 0) {
                    setState(() {
                        weight++;
                      });
                  }},
                  onPressMinus:() {
                    if(weight > 0) {
                    setState(() {
                      weight--;
                    });
                  }},),
              bottomWidgets(
                  title: 'AGE',
                  number: age,
                onPressPlus: () {
                  if(age >= 0) {
                    setState(() {
                      age++;
                    });
                  }},
                onPressMinus:() {
                    if(age > 0) {
                  setState(() {
                    age--;
                  });
                }},),
            ],
          ))
        ],
      ),
      bottomNavigationBar: FloatingActionButton(
        onPressed: () {
          result = weight + pow(height/100, 2);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ResultPage()));
        },
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
