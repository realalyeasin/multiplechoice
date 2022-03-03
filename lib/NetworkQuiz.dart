import 'package:flutter/material.dart';
import 'package:multiple_choice/DBMS%20Quiz.dart';
import 'package:multiple_choice/Quiz.dart';

import 'ComputerSecurity.dart';
import 'ReadingMaterials/ReadingMaterials.dart';

class NetworkQuiz extends StatefulWidget {
  const NetworkQuiz({Key? key}) : super(key: key);

  @override
  _NetworkQuizState createState() => _NetworkQuizState();
}

class _NetworkQuizState extends State<NetworkQuiz> {
  final pColor = const Color.fromRGBO(198, 234, 196, 1);
  final cColor = const Color.fromRGBO(125, 215, 249, 1);
  final sColor = const Color.fromRGBO(21, 76, 47, 1);
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 57, 35, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(247, 211, 36, 1),
        title: const Text(
          'Multiple Choice Quiz',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        actions: [
          PopupMenuButton(
              color: Color.fromRGBO(92, 34, 91, 1),
              icon: Icon(
                Icons.stacked_line_chart_outlined,
                color: Color.fromRGBO(15, 57, 35, 1),
              ),
              itemBuilder: (BuildContext ctx) => [
                    PopupMenuItem(
                      child: const Text(
                        'Add Your Question',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Color.fromRGBO(247, 211, 36, 1),
                        ),
                      ),
                      value: 1,
                      onTap: () {},
                    ),
                    const PopupMenuItem(
                      child: Text(
                        'Contributors',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Color.fromRGBO(247, 211, 36, 1),
                        ),
                      ),
                      value: 2,
                    ),
                    const PopupMenuItem(
                      child: Text(
                        'New Items Added',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Color.fromRGBO(247, 211, 36, 1),
                        ),
                      ),
                      value: 3,
                    ),
                    const PopupMenuItem(
                      child: Text(
                        'Upcoming',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Color.fromRGBO(247, 211, 36, 1),
                        ),
                      ),
                      value: 4,
                    ),
                  ])
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 120,
                      child: MaterialButton(
                        child: const Text(
                          'Networking Quiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.yellow),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Quiz()));
                        },
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 125,
                      child: MaterialButton(
                        height: 50,
                        elevation: 2,
                        child: const Text(
                          'Database Management Quiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.yellow),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DBMS_Quiz()));
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 120,
                      child: MaterialButton(
                        height: 50,
                        child: const Text(
                          'Computer Security Quiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.yellow),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ComputerSecurity()));
                        },
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 120,
                      child: MaterialButton(
                        height: 50,
                        child: const Text(
                          'Networking Quiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.yellow),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz()));
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 120,
                      child: MaterialButton(
                        height: 50,
                        child: const Text(
                          'Networking Quiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.yellow),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz()));
                        },
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 120,
                      child: MaterialButton(
                        height: 50,
                        child: const Text(
                          'Networking Quiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.yellow),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz()));
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 120,
                      child: MaterialButton(
                        height: 50,
                        child: const Text(
                          'Networking Quiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.yellow),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz()));
                        },
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 120,
                      child: MaterialButton(
                        height: 50,
                        child: const Text(
                          'Networking Quiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.yellow),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz()));
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                    height: 80,
                    width: 286,
                    child: MaterialButton(
                      height: 50,
                      child: const Text(
                        'Reading Materials',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 15,
                            color: Colors.yellow),
                      ),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ReadingMaterials()));
                      },
                    ),
                  )),
                    Positioned(
                        top: 27,
                        left: 230,
                        child: Icon(Icons.library_books, color: Colors.yellow,))

          ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
