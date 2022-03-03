import 'package:flutter/material.dart';
import 'package:multiple_choice/DBMS%20Quiz.dart';
import 'package:multiple_choice/Quiz.dart';

import 'ComputerSecurity.dart';

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
        actions: [
          PopupMenuButton(
              color: Colors.cyan.shade100,
              icon: Icon(Icons.stacked_line_chart_outlined, color: Colors.black,),
              itemBuilder: (BuildContext ctx) => [
                    PopupMenuItem(
                      child: const Text('Add Your Question',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),),
                      value: 1,
                      onTap: () {},
                    ),
                    const PopupMenuItem(
                      child: Text('Contributors',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),),
                      value: 2,
                    ),
                    const PopupMenuItem(
                      child: Text('New Items Added',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),),
                      value: 3,
                    ),
                    const PopupMenuItem(
                      child: Text('Upcoming',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),),
                      value: 4,
                    ),
                  ])
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MaterialButton(
              height: 50,
              child: const Text('Networking Quiz'),
              color: cColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Quiz()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 50,
              child: const Text('Database Management Quiz'),
              color: const Color.fromRGBO(204, 183, 238, 1),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DBMS_Quiz()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 50,
              child: const Text('Networking Quiz'),
              color: const Color.fromRGBO(143, 158, 100, 1),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ComputerSecurity()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 50,
              child: const Text('Networking Quiz'),
              color: cColor,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quiz()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 50,
              child: const Text('Networking Quiz'),
              color: cColor,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quiz()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 50,
              child: const Text('Networking Quiz'),
              color: cColor,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quiz()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
