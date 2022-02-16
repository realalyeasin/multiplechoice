import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SSummary extends StatelessWidget {
  final int score;
  const SSummary({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
       onWillPop: () async => false,
        child: Scaffold(
          body: Text(score.toString())
        ),
        );
  }
}
