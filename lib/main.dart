import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(MaterialApp(
    title: "Quiz app",
    home: MyQuizePage(),
  ));
}

class MyQuizePage extends StatefulWidget {
  const MyQuizePage({Key? key}) : super(key: key);

  @override
  _MyQuizePageState createState() => _MyQuizePageState();
}

class _MyQuizePageState extends State<MyQuizePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Quiz App")),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.red,
                      width: 5,
                    )),
                    child: Image.network(questions[questionId].image),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                    margin: EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        questions[questionId].question,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ))),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () {
                        setState(() {
                          if (questions[questionId].answer == true) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(correctAnswer());
                            updateQuestions();
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(badAnswer());
                          }
                        });
                      },
                      child: Text("Vrai")),
                )),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          setState(() {
                            if (questions[questionId].answer == false) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(correctAnswer());
                              updateQuestions();
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(badAnswer());
                            }
                          });
                        },
                        child: Text("Faux")))
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      updateQuestions();
                    });
                  },
                  child: Icon(
                    Icons.arrow_forward,
                  )),
            )
          ],
        )),
      ),
    );
  }
}

_checkAnswer(bool userchoice, BuildContext context) {}

_nextQuestion() {}
