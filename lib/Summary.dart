import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SSummary extends StatelessWidget {
  final int score;
  const SSummary({Key? key, required this.score}) : super(key: key);
  final qColor = const Color.fromRGBO(189, 238, 183, 1);
  final aColor = const Color.fromRGBO(238, 183, 211, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: qColor,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Card(
              child: Container(
                height: 100,
                width: 300,
                color: Colors.black,
                margin: EdgeInsets.all(50),
                alignment: Alignment.center,
                child: Text(
                  "Final Score ${score.toString()}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ));
  }
}
