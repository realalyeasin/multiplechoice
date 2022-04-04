import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multiple_choice/NetworkQuiz.dart';
import 'package:multiple_choice/PopUpClasses/Contributors.dart';
import 'Helper/Helper.dart';
import 'PopUpClasses/AddQuestion.dart';
import 'PopUpClasses/NewItemsAdded.dart';
import 'PopUpClasses/upComing.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Login()));
}

class MyAppState extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        navigatorKey: navigatorKey,
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
                    if (menu == 1) {
                      navigatorKey.currentState?.push(MaterialPageRoute(
                          builder: (context) => AddQuestion()));
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
          body: const NetworkQuiz(),
        ));
  }
}

class Login extends StatelessWidget {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.withOpacity(1),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MCQ QUIZ',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Log In your account",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: authService.email,
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: authService.password,
              decoration: InputDecoration(
                labelText: 'Password',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (authService.email != "" && authService.password != "") {
                    authService.loginUser(context);
                  }
                },
                child: Text("Log In")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text("Create an account"))
          ],
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.withOpacity(1),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MCQ QUIZ',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Register your account",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: authService.email,
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: authService.password,
              decoration: InputDecoration(
                labelText: 'Password',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (authService.email != "" && authService.password != "") {
                    authService.registerUser(context);
                  }
                },
                child: Text("Register")),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("Already have an account? Log In"))
          ],
        ),
      ),
    );
  }
}
