import '../../data/physics_questions.dart';
import '../../models/trivia.dart';

class PhysicsTriviaController {
  final List<Trivia> questions = physicsQuestions;

  bool checkAnswer(Trivia question, String selectedOption) {
    return question.correctAnswer == selectedOption;
  }
}