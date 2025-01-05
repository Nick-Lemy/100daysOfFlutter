import 'package:flutter/material.dart';

final Color bg = Color.fromRGBO(28, 29, 47, 1);
final Color co = Color.fromRGBO(47, 43, 60, 1);
final TextStyle bigNum = TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold);
final TextStyle smallNum = TextStyle(color: Colors.white, fontSize: 16);

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

Expanded bottomWidgets({required String title, required int number, required void Function() onPressPlus, required void Function() onPressMinus}) {
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
                  onPressed: onPressPlus,
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
                  onPressed: onPressMinus,
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
