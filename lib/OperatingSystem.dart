import 'package:flutter/cupertino.dart';

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

class OperatingSystem extends StatefulWidget {
  const OperatingSystem({Key? key}) : super(key: key);

  @override
  _OperatingSystemState createState() => _OperatingSystemState();
}

class _OperatingSystemState extends State<OperatingSystem> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(),
    );
  }
}
