import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Summary.dart';

class ComSecDB {
  var name = 'Computer Security';
  var questions = [
    "It is a self-replicating program that infects computer and spreads by inserting copies of itself into other executable code or documents.",
    "A person who uses his or her expertise to gain access to other people’s computers to get information illegally or do damage is a",
    "The first computer virus is",
    "First boot sector virus is",
    "__________ are attempts by individuals to obtain confidential information from you by falsifying their identity.",
    "A spoofing attack is",
    "____ are often delivered to PC through an E-mail attachment and are often designed to do harm.",
    "Hackers",
    "It is a prepared application that takes advantage of a known weakness.",
    "‘Trend Micro’ is a",
    "__________ are often delivered to a PC through an email attachment and are often designed to do harm.",
    "It is a toolkit for hiding the fact that a computer’s security has been compromised, is a general description of a set of programs which work to subvert control of an operating system from its legitimate (in accordance with established rules) operators.",
    "You can protect sensitive data from prying eyes using ______",
    "It is an application that captures TCP/IP data packets, which can maliciously be used to capture passwords and other data while it is in transit either within the computer or over the network.",
    "A vulnerability scanner is",
    "Like a virus, it is a self-replicating program. It also propagates through computer network.",
    "These are program designed as to seem to being or be doing one thing, but actually being or doing another.",
    "Like a virus, it is also a self-replicating program. The difference between a virus and it is that a worm does not create copies of itself on one system: it propagates through computer networks.",
    "It is a software program designed to record (‘log’) every keystroke on the machine on which it runs",
    "It is a self-replicating program that infects computer and spreads by inserting copies of itself into other executable code or documents.",
  ];

  var choices = [
    ["Keylogger", "Worm", "Virus", "Cracker"],
    ["hacker", "analyst", "instant messenger", "programmer"],
    ["Creeper", "PARAM", "the famous", "HARLIE"],
    ["computed", "mind", "brian", "Elk Cloner"],
    [
      "Phishing trips",
      "Computer viruses",
      "Special function cards",
      "Scanners"
    ],
    [
      "a prepared application that takes advantage of a known weakness.",
      "a tool used to quickly check computers on a network for known weaknesses.",
      "an application that captures TCP/IP data packets, which can maliciously be used to capture passwords and other data while it is in transit either within the computer or over the network.",
      "a situation in which one person or program successfully masquerades as another by falsifying data and thereby gaining illegitimate access."
    ],
    ["Viruses", "Spam", "Portals", "Email messages"],
    [
      "all have the same motive",
      "is another name for users",
      "may legally break into computers as long as they do not do any damage",
      "break into other people’s computers"
    ],
    ["security exploit", "vulnerability scanner", "packet sniffer", "rootkit"],
    ["virus program", "anti-virus software", "just a program", "All of these"],
    ["Viruses", "Spam", "Portals", "Email messages"],
    ["Rootkit", "Keylogger", "Worm", "Cracker"],
    ["Encryption", "Passwords", "File locks", "File permissions"],
    ["security exploit", "vulnerability scanner", "packet sniffer", "rootkit"],
    [
      "a prepared application that takes advantage of a known weakness.",
      "a tool used to quickly check computers on a network for known weaknesses.",
      "an application that captures TCP/IP data packets, which can maliciously be used to capture passwords and other data while it is in transit either within the computer or over the network.",
      "a situation in which one person or program successfully masquerades as another by falsifying data and thereby gaining illegitimate access."
    ],
    ["Spyware", "Worm Cracker", "Cracker", "phishing scam"],
    ["Trojan horses", "Keylogger", "Worm", "Cracker"],
    ["Keylogger", "Worm", "Cracker", "None"],
    ["Keylogger", "Worm", "Virus", "Cracker"],
    ["Keylogger", "Worm", "Virus", "Cracker"],
  ];

  var ans = [
    "Worm",
    "hacker",
    "Creeper",
    "brian",
    "Phishing trips",
    "a situation in which one person or program successfully masquerades as another by falsifying data and thereby gaining illegitimate access.",
    "Spam",
    "break into other people’s computers",
    "security exploit",
    "anti-virus software",
    "Viruses",
    "Rootkit",
    "File permissions",
    "packet sniffer",
    "a tool used to quickly check computers on a network for known weaknesses.",
    "None of these",
    "Trojan horses",
    "Worm",
    "Keylogger",
    "Virus",
  ];
}
var colorInitial = Colors.black;
var finalScore = 0;
var quesNumber = 0;
var next = true;
var border = Border.all(color: colorInitial, width: 4);
var CSquiz = ComSecDB();


class ComputerSecurity extends StatefulWidget {
  const ComputerSecurity({Key? key}) : super(key: key);

  @override
  _ComputerSecurityState createState() => _ComputerSecurityState();
}

class _ComputerSecurityState extends State<ComputerSecurity> {
  final qColor = const Color.fromRGBO(0, 0, 0, 1);
  final aColor = const Color.fromRGBO(61, 10, 60, 1);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              CSquiz.name,
              style: const TextStyle(letterSpacing: 1),
            ),
            backgroundColor: const Color.fromRGBO(5, 0, 8, 1),
            automaticallyImplyLeading: false,
            centerTitle: true,
          ),
          backgroundColor: aColor,
          body: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Question ${quesNumber + 1} of ${CSquiz.questions.length}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            letterSpacing: .5,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Score $finalScore',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              letterSpacing: .5,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "${quesNumber + 1} ${CSquiz.questions[quesNumber]}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: border,
                          color: colorInitial,
                        ),
                        child: MaterialButton(
                          color: qColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(CSquiz.choices[quesNumber][0],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (CSquiz.choices[quesNumber][0] ==
                                CSquiz.ans[quesNumber]) {
                              debugPrint('CORRECT');
                              finalScore++;
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor:
                                Colors.orangeAccent.withOpacity(.7),
                                duration: Duration(milliseconds: 1000),
                                content: const Text(
                                  "Correct Answer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600),
                                ),
                              ));
                              updateQuestion();
                            } else {
                              setState(() {
                                debugPrint('WRONG');
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  backgroundColor:
                                  Colors.orangeAccent.withOpacity(.7),
                                  duration: Duration(milliseconds: 1000),
                                  content: const Text(
                                    "Wrong Answer",
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ));
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: border,
                          color: colorInitial,
                        ),
                        child: MaterialButton(
                          minWidth: 100,
                          color: qColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(CSquiz.choices[quesNumber][1],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (CSquiz.choices[quesNumber][1] ==
                                CSquiz.ans[quesNumber]) {
                              debugPrint('CORRECT');
                              finalScore++;
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor:
                                Colors.orangeAccent.withOpacity(.7),
                                duration: Duration(milliseconds: 1000),
                                content: const Text(
                                  "Correct Answer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600),
                                ),
                              ));
                              updateQuestion();
                            } else {
                              debugPrint('WRONG');
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor:
                                Colors.orangeAccent.withOpacity(.7),
                                duration: Duration(milliseconds: 1000),
                                content: const Text(
                                  "Wrong Answer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600),
                                ),
                              ));
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: border,
                          color: colorInitial,
                        ),
                        child: MaterialButton(
                          minWidth: 100,
                          color: qColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(CSquiz.choices[quesNumber][2],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (CSquiz.choices[quesNumber][2] ==
                                CSquiz.ans[quesNumber]) {
                              debugPrint('CORRECT');
                              finalScore++;
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor:
                                Colors.orangeAccent.withOpacity(.7),
                                duration: Duration(milliseconds: 1000),
                                content: const Text(
                                  "Correct Answer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600),
                                ),
                              ));
                              updateQuestion();
                            } else {
                              debugPrint('WRONG');
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor:
                                Colors.orangeAccent.withOpacity(.7),
                                duration: Duration(milliseconds: 1000),
                                content: const Text(
                                  "Wrong Answer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600),
                                ),
                              ));
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: border,
                          color: colorInitial,
                        ),
                        child: MaterialButton(
                          minWidth: 100,
                          color: qColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(CSquiz.choices[quesNumber][3],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (CSquiz.choices[quesNumber][3] ==
                                CSquiz.ans[quesNumber]) {
                              debugPrint('CORRECT');
                              finalScore++;
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor:
                                Colors.orangeAccent.withOpacity(.7),
                                duration: Duration(milliseconds: 1000),
                                content: const Text(
                                  "Correct Answer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600),
                                ),
                              ));
                              updateQuestion();
                            } else {
                              debugPrint('Wrong Answer');
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor:
                                Colors.orangeAccent.withOpacity(.7),
                                duration: Duration(milliseconds: 1000),
                                content: const Text(
                                  "Wrong Answer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600),
                                ),
                              ));
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MaterialButton(
                            color: Colors.black,
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              if (next) {
                                updateQuestion();
                              }
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    onPressed: () {
                      finalScore = 0;
                      quesNumber = 0;
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Text('QUIT',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              backgroundColor: Colors.white,
                              letterSpacing: 2.5,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ],
            ),
          )),
    );
  }
  void updateQuestion() {
    setState(() {
      if (quesNumber == CSquiz.questions.length - 1) {
        quesNumber = 0;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SSummary(
                  score: finalScore,
                )));
      } else {
        quesNumber++;
      }
    });
  }
}
