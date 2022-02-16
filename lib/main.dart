import 'package:flutter/material.dart';
import 'package:multiple_choice/NetworkQuiz.dart';

import 'Quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void startQuiz() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Quiz()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const NetworkQuiz());
  }
}
