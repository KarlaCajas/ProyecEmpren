import '../../data/biology_questions.dart';
import '../../models/trivia.dart';

class BiologyTriviaController {
  final List<Trivia> questions = biologyQuestions;

  bool checkAnswer(Trivia question, String selectedOption) {
    return question.correctAnswer == selectedOption;
  }
}