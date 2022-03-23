import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multiple_choice/DBMS%20Quiz.dart';
import 'package:multiple_choice/Quiz.dart';
import 'ComputerSecurity.dart';
import 'OperatingSystem.dart';
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
                      width: 147,
                      child: MaterialButton(
                        child: const Text(
                          'Networking',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 17,
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
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 5)
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 147,
                      child: MaterialButton(
                        height: 50,
                        elevation: 2,
                        child: const Text(
                          'Database Management',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 16,
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 5)
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
                      width: 147,
                      child: MaterialButton(
                        height: 50,
                        child: const Text(
                          'Computer Security',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 16,
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 5)
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 147,
                      child: MaterialButton(
                        height: 50,
                        child: const Text(
                          'Operating System',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 16,
                              color: Colors.yellow),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const OperatingSystem()));
                        },
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 5)
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
                      width: 147,
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 5)
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 147,
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 5)
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
                      width: 147,
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 5)
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 147,
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 5)
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
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 5)
                        ),
                  )),
                    const Positioned(
                        top: 27,
                        left: 225,
                        child: Icon(FontAwesomeIcons.book, color: Colors.yellow,))

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
