import 'package:flutter/material.dart';
import 'package:multiple_choice/Quiz.dart';

class NetworkQuiz extends StatefulWidget {
  const NetworkQuiz({Key? key}) : super(key: key);

  @override
  _NetworkQuizState createState() => _NetworkQuizState();
}

class _NetworkQuizState extends State<NetworkQuiz> {
  final pColor = const Color.fromRGBO(198, 234, 196, 1);
  final cColor = const Color.fromRGBO(125, 215, 249, 1);
  final sColor = const Color.fromRGBO(247, 186, 164, 1);
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sColor,
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.white,
        backgroundColor: pColor,
        title: const Text(
          'Multiple Choice Quiz',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MaterialButton(
              height: 50,
              child: const Text('Quiz 1'),
              color: cColor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Quiz()));
              },
            )
          ],
        ),
      ),
    );
  }
}
