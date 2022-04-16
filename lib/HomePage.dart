import 'dart:ui';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiple_choice/NetworkQuiz.dart';
import 'Helper/Helper.dart';
import 'PopUpClasses/AddQuestion.dart';
import 'PopUpClasses/Contributors.dart';
import 'PopUpClasses/NewItemsAdded.dart';
import 'PopUpClasses/upComing.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return FancyDrawerWrapper(
      drawerItems: [
        Text(
          "Go to home",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "About us",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Our products",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Support us",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Log out",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      controller: _controller,
      child: Scaffold(
        body: NetworkQuiz(),
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
                  if (menu == 1) {
                    navigatorKey.currentState?.push(
                        MaterialPageRoute(builder: (context) => AddQuestion()));
                  } else if (menu == 2) {
                    navigatorKey.currentState?.push(MaterialPageRoute(
                        builder: (context) => const Contributors()));
                  } else if (menu == 3) {
                    navigatorKey.currentState?.push(MaterialPageRoute(
                        builder: (context) => NewItemsAdded()));
                  } else if (menu == 4) {
                    navigatorKey.currentState?.push(
                        MaterialPageRoute(builder: (context) => upComing()));
                  } else if (menu == 5) {
                    navigatorKey.currentState?.push(
                        MaterialPageRoute(builder: (context) => Login()));
                    AuthService authservice = AuthService();
                    authservice.logOutUser(context);
                  }
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
                      const PopupMenuItem(
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Color.fromRGBO(247, 211, 36, 1),
                          ),
                        ),
                        value: 5,
                      ),
                    ])
          ],
        ),
      ),
    );
  }
}
