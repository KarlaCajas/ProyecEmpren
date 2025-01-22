import '../../data/chemistry_questions.dart';
import '../../models/trivia.dart';

class ChemistryTriviaController {
  final List<Trivia> questions = chemistryQuestions;

  bool checkAnswer(Trivia question, String selectedOption) {
    return question.correctAnswer == selectedOption;
  }
}