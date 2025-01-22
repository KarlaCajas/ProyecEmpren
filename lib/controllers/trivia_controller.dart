import '../models/trivia.dart';

class TriviaController {
  // Método para obtener las preguntas de trivia
  List<Trivia> getTrivias() {
    return [
      Trivia(
        question: '¿Qué es la gravedad?',
        options: ['Fuerza', 'Energía', 'Materia'],
        correctAnswer: 'Fuerza',
      ),
      Trivia(
        question: '¿Quién descubrió la penicilina?',
        options: ['Einstein', 'Fleming', 'Newton'],
        correctAnswer: 'Fleming',
      ),
    ];
  }
}
