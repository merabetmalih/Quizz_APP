import 'package:flutter/material.dart';

int questionId = 1;

var questions = [
  Question("Is Flutter created by Google?", true,
      "https://docs.flutter.dev/assets/images/flutter-logo-sharing.png"),
  Question("Is Kotlin programming language used by Flutter?", false,
      "https://www.sngular.com/wp-content/uploads/2019/11/Kotlin-Blog.png"),
  Question(
      " Dart programing language created by Lars Bak and Kasper Lund.",
      true,
      "https://www.extremetech.com/wp-content/uploads/2011/10/dart-logo-banner1-640x353.jpg")
];

void updateQuestions() {
  if (questionId != questions.length - 1) {
    questionId = questionId + 1;
  } else {
    questionId = 0;
  }
}

SnackBar correctAnswer() {
  var snackMessage = "The answer is correct";
  var snackColor = Colors.green;

  return SnackBar(
    content: Text(
      snackMessage,
      textAlign: TextAlign.center,
      style: TextStyle(color: snackColor),
    ),
  );
}

SnackBar badAnswer() {
  var snackColor = Colors.red;
  var snackMessage = "Sorry,Try again";
  return SnackBar(
    content: Text(
      textAlign: TextAlign.center,
      snackMessage,
      style: TextStyle(color: snackColor),
    ),
  );
}

class Question {
  String question;
  bool answer;
  String image;

  Question(this.question, this.answer, this.image);
}
