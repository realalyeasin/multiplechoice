import 'package:flutter/material.dart';
import 'package:multiple_choice/NetworkQuiz.dart';
import 'package:multiple_choice/PopUpClasses/Contributors.dart';

import 'PopUpClasses/AddQuestion.dart';
import 'Quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void startQuiz() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Quiz()));
    });
  }
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
      navigatorKey : navigatorKey,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(247, 211, 36, 1),
            title: const Text(
              'Multiple Choice Quiz',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            actions: [
              PopupMenuButton(
                  color: const Color.fromRGBO(92, 34, 91, 1),
                  icon: const Icon(
                    Icons.stacked_line_chart_outlined,
                    color: Color.fromRGBO(15, 57, 35, 1),
                  ),
                  onSelected: (int menu) {
                    if (menu == 1) {navigatorKey.currentState?.push(MaterialPageRoute(builder: (context)=> AddQuestion()));}
                    else if (menu == 2) {navigatorKey.currentState?.push(MaterialPageRoute(builder: (context)=> const Contributors()));}
                    else if (menu == 3) {navigatorKey.currentState?.push(MaterialPageRoute(builder: (context)=> AddQuestion()));}
                    else if (menu == 4) {navigatorKey.currentState?.push(MaterialPageRoute(builder: (context)=> AddQuestion()));}
                  },
                  itemBuilder: (BuildContext ctx) => [
                    const PopupMenuItem(
                      child: Text(
                        'Add Your Question',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Color.fromRGBO(247, 211, 36, 1),
                        ),
                      ),
                      value: 1,
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
          body: const NetworkQuiz(),
        ));
  }
}
