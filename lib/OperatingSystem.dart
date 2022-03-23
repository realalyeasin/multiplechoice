import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Summary.dart';

class OSDB {
  var name = 'Operating System';
  var questions = [
    "Which of the following is not an operating system?",
    "What is the maximum length of the filename in DOS?",
    "When was the first operating system developed?",
    "When were MS windows operating systems proposed?",
    "What else is a command interpreter called?",
    "What is the full name of FAT?",
    "BIOS is used?",
    "What is the mean of the Booting in the operating system?",
    "When does page fault occur?",
    "Banker's algorithm is used?",
    "When you delete a file in your computer, where does it go?",
    "Which is the Linux operating system?",
    "What is the full name of the DSM?",
    "What is the full name of the IDL?",
    "What is bootstrapping called?",
    "What is the fence register used for?",
    "If the page size increases, the internal fragmentation?",
    "Which of the following is a single-user operating system?",
    "The size of virtual memory is based on which of the following?",
    "If a page number is not found in the translation lookaside buffer, then it is known as a?",
    "Which of the following operating systems does not support more than one program at a time?",
    "Which of the following is a condition that causes deadlock?",
    "Who provides the interface to access the services of the operating system?",
    "Which program runs first after booting the computer and loading the GUI?",
  ];
  var choices = [
    ["Windows", "Linux", "Oracle", "DOS"],
    ["4", "5", "8", "10"],
    ["1948", "1949", "1950", "1951"],
    ["1994", "1992", "1998", "1985"],
    ["prompt", "kernel", "shell", "command"],
    ["File attribute table", "File allocation table", "Font attribute table", "Format allocation table"],
    ["By operating system", "By compiler", "By interpreter", "By application software"],
    ["Restarting computer", "Install the program", "To scan", "To turn off"],
    ["The page is present in memory.", "The deadlock occurs.", "The page does not present in memory.", "The buffering occurs."],
    ["To prevent deadlock", "To deadlock recovery", "To solve the deadlock", "None of these"],
    ["Taskbar", "Recycle bin", "Hard disk", "None of these"],
    ["Private operating system", "Windows operating system", "Open-source operating system", "None of these"],
    ["Direct system module", "Direct system memory", "Demoralized system memory", "Distributed shared memory"],
    ["Interface definition language", "Interface direct language", "Interface data library", "None of these"],
    ["Cold boot", "Cold hot boot", "Cold hot strap", "Hot boot"],
    ["To disk protection", "To CPU protection", "To memory protection", "None of these"],
    ["Decreases", "Increases", "Remains constant", "None of these"],
    ["Windows", "MAC", "Ms-Dos", "None"],
    ["CPU", "RAM", "Address bus", "Data bus"],
    ["Translation Lookaside Buffer miss", "Buffer miss", "Translation Lookaside Buffer hit", "All of the mentioned"],
    ["Linux", "Windows", "MAC", "DOS"],
    ["Mutual exclusion", "Circular wait", "No preemption", "All of these"],
    ["API", "System call", "Library", "Assembly instruction"],
    ["Desktop Manager", "File Manager", "Windows Explorer", "Authentication"],
  ];
  var ans = [
    "Oracle",
    "8",
    "1950",
    "1985",
    "shell",
    "File allocation table",
    "By operating system",
    "Restarting computer",
    "The page is present in memory.",
    "To prevent deadlock",
    "Recycle bin",
    "Open-source operating system",
    "Distributed shared memory",
    "Interface definition language",
    "Cold boot",
    "To memory protection",
    "Increases",
    "Ms-Dos",
    "Address bus",
    "Translation Lookaside Buffer miss",
    "DOS",
    "All of these",
    "System call",
    "Authentication"
  ];
}

var finalScore = 0;
var quesNumber = 0;
var OSquiz = OSDB();

class OperatingSystem extends StatefulWidget {
  const OperatingSystem({Key? key}) : super(key: key);

  @override
  _OperatingSystemState createState() => _OperatingSystemState();
}

class _OperatingSystemState extends State<OperatingSystem> {
  final qColor = const Color.fromRGBO(0, 0, 0, 1);
  final aColor = const Color.fromRGBO(61, 10, 60, 1);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              OSquiz.name,
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
                        'Question ${quesNumber + 1} of ${OSquiz.questions.length}',
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
                  "${quesNumber + 1} ${OSquiz.questions[quesNumber]}",
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
                          child: Text(OSquiz.choices[quesNumber][0],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  letterSpacing: .5,
                                  fontWeight: FontWeight.bold)),
                        ),
                        onPressed: () {
                          if (OSquiz.choices[quesNumber][0] ==
                              OSquiz.ans[quesNumber]) {
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
                          child: Text(OSquiz.choices[quesNumber][1],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  letterSpacing: .5,
                                  fontWeight: FontWeight.bold)),
                        ),
                        onPressed: () {
                          if (OSquiz.choices[quesNumber][1] ==
                              OSquiz.ans[quesNumber]) {
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
                          child: Text(OSquiz.choices[quesNumber][2],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  letterSpacing: .5,
                                  fontWeight: FontWeight.bold)),
                        ),
                        onPressed: () {
                          if (OSquiz.choices[quesNumber][2] ==
                              OSquiz.ans[quesNumber]) {
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
                          child: Text(OSquiz.choices[quesNumber][3],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  letterSpacing: .5,
                                  fontWeight: FontWeight.bold)),
                        ),
                        onPressed: () {
                          if (OSquiz.choices[quesNumber][3] ==
                              OSquiz.ans[quesNumber]) {
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
                  height: 150,
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
          )
      ),
    );
  }
  void updateQuestion() {
    setState(() {
      if (quesNumber == OSquiz.questions.length - 1) {
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
