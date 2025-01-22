import 'package:flutter/material.dart';
import '../models/trivia.dart';

class TriviaView extends StatefulWidget {
  const TriviaView({super.key});

  @override
  _TriviaViewState createState() => _TriviaViewState();
}

class _TriviaViewState extends State<TriviaView> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  void _answerQuestion(String selectedAnswer) {
    if (selectedAnswer ==
        triviaQuestions[_currentQuestionIndex].correctAnswer) {
      _score++;
    }
    setState(() {
      _currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trivia')),
      body: _currentQuestionIndex < triviaQuestions.length
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    triviaQuestions[_currentQuestionIndex].question,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  ...triviaQuestions[_currentQuestionIndex]
                      .options
                      .map((option) {
                    return ElevatedButton(
                      onPressed: () => _answerQuestion(option),
                      child: Text(option),
                    );
                  }),
                ],
              ),
            )
          : Center(
              child: Text(
                'Tu puntuación es: $_score/${triviaQuestions.length}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
