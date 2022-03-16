import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Summary.dart';

class DBMSQuizDB {
  var name = 'Database Management System';
  var questions = [
    "In designing a parallel program, one has to break the problem into discreet chunks of work that can be distributed to multiple tasks. This is known as",
    "Fine-grain Parallelism is",
    "Granularity is",
    "Distributed Memory",
    "Serial Execution",
    "Functional Decomposition:",
    "It distinguishes multi-processor computer architectures according to how they can be classified along the two independent dimensions of Instruction and Dat(A) Each of these dimensions can have only one of two possible states: Single or Multiple.",
    "Coarse-grain Parallelism",
    "Parallel Execution",
    "In shared Memory:",
    "Massively Parallel",
    "Cache Coherent UMA (CC-UMA) is",
  ];

  var choices = [
    ["Decomposition", "Partitioning", "Compounding", "Both A and B"],
    [
      "In parallel computing, it is a qualitative measure of the ratio of computation to communication",
      "Here relatively small amounts of computational work are done between communication events",
      "Relatively large amounts of computational work are done between communication / synchronization events",
      "None of these"
    ],
    [
      "In parallel computing, it is a qualitative measure of the ratio of computation to communication",
      "Here relatively small amounts of computational work are done between communication events",
      "Relatively large amounts of computational work are done between communication / synchronization events",
      "None of these"
    ],
    [
      "A computer architecture where all processors have direct access to common physical memory",
      "It refers to network based memory access for physical memory that is not common",
      "Parallel tasks typically need to exchange data There are several ways this can be accomplished, such as through, a shared memory bus or over a network, however the actual event of data exchange is commonly referred to as communications regardless of the method employed",
      "None of these"
    ],
    [
      "A sequential execution of a program, one statement at a time",
      "Execution of a program by more than one task, with each task being able to execute the same or different statement at the same moment in time",
      "A program or set of instructions that is executed by a processor.",
      "None of these"
    ],
    [
      "Partitioning in that the data associated with a problem is decomposed Each parallel task then works on a portion of the data",
      "Partitioning in that, the focus is on the computation that is to be performed rather than on the data manipulated by the computation. The problem is decomposed according to the work that must be done. Each task then performs a portion of the overall work.",
      "It is the time it takes to send a minimal (0 byte) message from point A to point B",
      "None of these"
    ],
    [
      "Single Program Multiple Data (SPMD)",
      "Flynn’s taxonomy",
      "Von Neumann Architecture",
      "None of these"
    ],
    [
      "In parallel computing, it is a qualitative measure of the ratio of computation to communication",
      "Here relatively small amounts of computational work are done between communication events",
      "Relatively large amounts of computational work are done between communication / synchronization events",
      "None of these"
    ],
    [
      "A sequential execution of a program, one statement at a time",
      "Execution of a program by more than one task, with each task being able to execute the same or different statement at the same moment in time",
      "A program or set of instructions that is executed by a processor.",
      "None of these"
    ],
    [
      "Here all processors access, all memory as global address space",
      "Here all processors have individual memory",
      "Here some processors access, all memory as global address space and some not",
      "None of these"
    ],
    [
      "Observed speedup of a code which has been parallelized, defined as: wall-clock time of serial execution and wall-clock time of parallel execution",
      "The amount of time required to coordinate parallel tasks. It includes factors such as: Task start-up time, Synchronizations, Data communications.",
      "Refers to the hardware that comprises a given parallel system - having many processors",
      "None of these"
    ],
    [
      "Here all processors have equal access and access times to memory",
      "Here if one processor updates a location in shared memory, all the other processors know about the update.",
      "Here one SMP can directly access memory of another SMP and not all processors have equal access time to all memories",
      "None of these"
    ]
  ];

  var ans = [
    "Both A and B",
    "Here relatively small amounts of computational work are done between communication events",
    "In parallel computing, it is a qualitative measure of the ratio of computation to communication",
    "It refers to network based memory access for physical memory that is not common",
    "A sequential execution of a program, one statement at a time",
    "Partitioning in that, the focus is on the computation that is to be performed rather than on the data manipulated by the computation. The problem is decomposed according to the work that must be done. Each task then performs a portion of the overall work.",
    "Flynn’s taxonomy",
    "Relatively large amounts of computational work are done between communication / synchronization events",
    "Execution of a program by more than one task, with each task being able to execute the same or different statement at the same moment in time",
    "Here all processors access, all memory as global address space",
    "The amount of time required to coordinate parallel tasks. It includes factors such as: Task start-up time, Synchronizations, Data communications.",
    "Here if one processor updates a location in shared memory, all the other processors know about the update."
  ];
}

var finalScore = 0;
var quesNumber = 0;
var DBMSquiz = DBMSQuizDB();

class DBMS_Quiz extends StatefulWidget {
  const DBMS_Quiz({Key? key}) : super(key: key);

  @override
  _DBMS_QuizState createState() => _DBMS_QuizState();
}

class _DBMS_QuizState extends State<DBMS_Quiz> {
  final qColor = const Color.fromRGBO(0, 0, 0, 1);
  final aColor = const Color.fromRGBO(61, 10, 60, 1);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                DBMSquiz.name,
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
                          'Question ${quesNumber + 1} of ${DBMSquiz.questions.length}',
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
                    "${quesNumber + 1} ${DBMSquiz.questions[quesNumber]}",
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
                            child: Text(DBMSquiz.choices[quesNumber][0],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (DBMSquiz.choices[quesNumber][0] ==
                                DBMSquiz.ans[quesNumber]) {
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
                            child: Text(DBMSquiz.choices[quesNumber][1],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (DBMSquiz.choices[quesNumber][1] ==
                                DBMSquiz.ans[quesNumber]) {
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
                            child: Text(DBMSquiz.choices[quesNumber][2],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (DBMSquiz.choices[quesNumber][2] ==
                                DBMSquiz.ans[quesNumber]) {
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
                            child: Text(DBMSquiz.choices[quesNumber][3],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (DBMSquiz.choices[quesNumber][3] ==
                                DBMSquiz.ans[quesNumber]) {
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
                      child: const Text('RESET',
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
      if (quesNumber == DBMSquiz.questions.length - 1) {
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
