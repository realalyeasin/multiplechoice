import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Summary.dart';

class ComSecDB {
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
var finalScore = 0;
var quesNumber = 0;
var CSquiz = ComSecDB();


class ComputerSecurity extends StatefulWidget {
  const ComputerSecurity({Key? key}) : super(key: key);

  @override
  _ComputerSecurityState createState() => _ComputerSecurityState();
}

class _ComputerSecurityState extends State<ComputerSecurity> {
  final qColor = const Color.fromRGBO(189, 238, 183, 1);
  final aColor = const Color.fromRGBO(238, 183, 211, 1);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          backgroundColor: aColor,
          body: Container(
            margin: EdgeInsets.all(20),
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
                          'Question ${quesNumber + 1} of ${CSquiz.questions.length}'),
                      Text('Score $finalScore'),
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
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 15,
                ),
                Wrap(
                  children: [
                    MaterialButton(
                      minWidth: 100,
                      color: qColor,
                      child: Text(CSquiz.choices[quesNumber][0]),
                      onPressed: () {
                        if (CSquiz.choices[quesNumber][0] ==
                            CSquiz.ans[quesNumber]) {
                          debugPrint('CORRECT');
                          finalScore++;
                        } else {
                          debugPrint('WRONG');
                        }
                        updateQuestion();
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MaterialButton(
                      minWidth: 100,
                      color: qColor,
                      child: Text(CSquiz.choices[quesNumber][1]),
                      onPressed: () {
                        if (CSquiz.choices[quesNumber][1] ==
                            CSquiz.ans[quesNumber]) {
                          debugPrint('CORRECT');
                          finalScore++;
                        } else {
                          debugPrint('WRONG');
                        }
                        updateQuestion();
                      },
                    )
                  ],
                ),
                Wrap(
                  children: [
                    MaterialButton(
                      minWidth: 100,
                      color: qColor,
                      child: Text(CSquiz.choices[quesNumber][2]),
                      onPressed: () {
                        if (CSquiz.choices[quesNumber][2] ==
                            CSquiz.ans[quesNumber]) {
                          debugPrint('CORRECT');
                          finalScore++;
                        } else {
                          debugPrint('WRONG');
                        }
                        updateQuestion();
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MaterialButton(
                      minWidth: 100,
                      color: qColor,
                      child: Text(CSquiz.choices[quesNumber][3]),
                      onPressed: () {
                        if (CSquiz.choices[quesNumber][3] ==
                            CSquiz.ans[quesNumber]) {
                          debugPrint('CORRECT');
                          finalScore++;
                        } else {
                          debugPrint('WRONG');
                        }
                        updateQuestion();
                      },
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    onPressed: () {
                      finalScore = 0;
                      quesNumber = 0;
                      Navigator.pop(context);
                    },
                    child: const Text('RESET'),
                  ),
                )
              ],
            ),
          )
      ),
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
