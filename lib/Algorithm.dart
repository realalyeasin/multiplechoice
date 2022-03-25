import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var finalScore = 0;
var quesNumber = 0;
class Algorithm extends StatefulWidget {
  const Algorithm({Key? key}) : super(key: key);

  @override
  _AlgorithmState createState() => _AlgorithmState();
}

class _AlgorithmState extends State<Algorithm> {
  final qColor = const Color.fromRGBO(0, 0, 0, 1);
  final aColor = const Color.fromRGBO(61, 10, 60, 1);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(

        )
    );
  }
}
