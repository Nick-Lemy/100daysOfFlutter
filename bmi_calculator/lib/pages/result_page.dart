import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/elements.dart';
import 'home_page.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        title: Text(
          'Your Result',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: co,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(child: Text(result.toString(), style: bigNum,)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FloatingActionButton(
        onPressed: () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage())),
        shape: LinearBorder(),
        backgroundColor: Colors.redAccent,
        child: Text(
          'RECALCULATE',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
