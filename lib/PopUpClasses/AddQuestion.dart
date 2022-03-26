import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({Key? key}) : super(key: key);

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion>
    with SingleTickerProviderStateMixin {
  CollectionReference mcqUsers =
      FirebaseFirestore.instance.collection("mcqUsers");
  String? name, email, ques;

  @override
  Widget build(BuildContext context) {
    CollectionReference mcqUsers =
        FirebaseFirestore.instance.collection('mcqUsers');
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
                    onChanged: (value1) {
                      name = value1;
                    },
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
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    onChanged: (value2) {
                      email = value2;
                    },
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),
                      hintText: 'Enter Your Mail',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    onChanged: (value3) {
                      ques = value3;
                    },
                    autocorrect: false,
                    obscureText: false,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.question_answer_outlined,
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),
                      hintText: 'Write your questions',
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
                            onPressed: () async {
                              await mcqUsers.add({
                                "name": name,
                                "email": email,
                                "question": ques
                              }).then((value) => debugPrint("New Value Added"));
                              setState(() {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  backgroundColor: Colors.black.withOpacity(.9),
                                  duration: Duration(milliseconds: 2200),
                                  content: const Text(
                                    "Thanks for your query!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ));
                              });
                            },
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
