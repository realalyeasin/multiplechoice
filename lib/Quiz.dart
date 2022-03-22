import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Summary.dart';

class QuizDB {
  var name = 'Computer Networking';
  var questions = [
    "Which of these is a standard interface for serial data transmission?",
    "Which of the following transmission directions listed is not a legitimate channel?",
    "'Parity bits' are used for which of the following purposes?",
    "What kind of transmission medium is most appropriate to carry data in a computer network that is exposed to electrical interferences?",
    " A collection of hyperlinked documents on the internet forms the ?",
    "The location of a resource on the internet is given by its?",
    "A proxy server is used as the computer?",
    "Which one of the following would breach the integrity of a system?",
    "Which software prevents the external access to a system?",
    "Which of the following best describes uploading information?",
    "Which one of the following is the most common internet protocol? ",
    "Which type of topology is best suited for large businesses which must carefully control and coordinate the operation of distributed branch outlets?",
  ];

  var choices = [
    ["ASCII", "RS232C", "2", "Centronics"],
    ["Simplex", "Half Duplex", "Full Duplex", "Double Duplex"],
    [
      "Encryption of data",
      "To transmit faster",
      "To detect errors",
      "To identify the user"
    ],
    ["Unshielded twisted pair", "Optical fiber", "Coaxial cable", "Microwave"],
    [
      "World Wide Web (WWW)",
      "E-mail system",
      "Mailing list",
      "Hypertext markup language"
    ],
    ["Protocol", "URL", "E-mail address", "ICQ"],
    [
      "with external access",
      "acting as a backup",
      "performing file handling",
      "accessing user permissions"
    ],
    [
      "Looking the room to prevent theft",
      "Full access rights for all users",
      "Fitting the system with an anti-theft device",
      "Protecting the device against willful or accidental damage"
    ],
    ["Firewall", "Gateway", "Router", "Virus checker"],
    [
      "Sorting data on a disk drive",
      "Sending information to a host computer",
      "Receiving information from a host computer",
      "Sorting data on a hard drive"
    ],
    ["HTML", "NetBEUI", "TCP/IP", "IPX/SPX"],
    ["Ring", "Local area", "Hierarchical", "Star"]
  ];

  var ans = [
    "RS232C",
    "Double Duplex",
    "To detect errors",
    "Optical fiber",
    "World Wide Web (WWW)",
    "URL",
    "with external access",
    " Full access rights for all users",
    "Firewall",
    "Sending information to a host computer",
    "TCP/IP",
    "Star"
  ];
}

var finalScore = 0;
var quesNumber = 0;
var quiz = QuizDB();

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final qColor = const Color.fromRGBO(0, 0, 0, 1);
  final aColor = const Color.fromRGBO(61, 10, 60, 1);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                quiz.name,
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
                          'Question ${quesNumber + 1} of ${quiz.questions.length}',
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
                    "${quesNumber + 1} ${quiz.questions[quesNumber]}",
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
                        MaterialButton(
                          minWidth: 100,
                          color: qColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(quiz.choices[quesNumber][0],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (quiz.choices[quesNumber][0] ==
                                quiz.ans[quesNumber]) {
                              debugPrint('CORRECT');
                              finalScore++;
                            } else {
                              debugPrint('WRONG');
                            }
                            updateQuestion();
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MaterialButton(
                          minWidth: 100,
                          color: qColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(quiz.choices[quesNumber][1],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (quiz.choices[quesNumber][1] ==
                                quiz.ans[quesNumber]) {
                              debugPrint('CORRECT');
                              finalScore++;
                            } else {
                              debugPrint('WRONG');
                            }
                            updateQuestion();
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          minWidth: 100,
                          color: qColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(quiz.choices[quesNumber][2],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (quiz.choices[quesNumber][2] ==
                                quiz.ans[quesNumber]) {
                              debugPrint('CORRECT');
                              finalScore++;
                            } else {
                              debugPrint('WRONG');
                            }
                            updateQuestion();
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MaterialButton(
                          minWidth: 100,
                          color: qColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(quiz.choices[quesNumber][3],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (quiz.choices[quesNumber][3] ==
                                quiz.ans[quesNumber]) {
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
                  ),
                  const SizedBox(
                    height: 220,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: MaterialButton(
                      onPressed: () {
                        finalScore = 0;
                        quesNumber = 0;
                        Navigator.pop(context);
                      },
                      child: const Text('QUIT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              letterSpacing: 2.5,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
            )));
  }

  void updateQuestion() {
    setState(() {
      if (quesNumber == quiz.questions.length - 1) {
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
