import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({Key? key}) : super(key: key);

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion>
    with SingleTickerProviderStateMixin {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  String _userEmail = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(3, 14, 72, 1),
        title: const Text(
          'Add Your Questions',
          style: TextStyle(letterSpacing: 3),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(7, 32, 152, 1),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(127, 185, 135, 1),
        ),
        child: Center(
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    onChanged: (text) {},
                    controller: _email,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.perm_contact_calendar_outlined,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),
                      hintText: 'Enter Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    onChanged: (text) {},
                    autocorrect: false,
                    obscureText: false,
                    enableSuggestions: false,
                    controller: _pass,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.question_answer_outlined,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(3, 14, 72, 1)),
                            onPressed: () {},
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                letterSpacing: 1.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
