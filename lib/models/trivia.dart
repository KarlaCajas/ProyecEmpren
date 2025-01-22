class Trivia {
  final String question;
  final List<String> options;
  final String correctAnswer;

  Trivia({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}
List<Trivia> triviaQuestions = [
  Trivia(
    question: '¿Qué es la velocidad?',
    options: ['Cambio de posición', 'Cambio de tiempo', 'Cambio de aceleración', 'Cambio de masa'],
    correctAnswer: 'Cambio de posición',
  ),
  Trivia(
    question: '¿Cuál es la primera ley de Newton?',
    options: ['Ley de la inercia', 'Ley de la fuerza', 'Ley de la acción y reacción', 'Ley de la gravedad'],
    correctAnswer: 'Ley de la inercia',
  ),
  Trivia(
    question: '¿Qué es la aceleración?',
    options: ['Cambio de velocidad', 'Cambio de posición', 'Cambio de tiempo', 'Cambio de masa'],
    correctAnswer: 'Cambio de velocidad',
  ),
  Trivia(
    question: '¿Cuál es la unidad de medida de la fuerza?',
    options: ['Newton', 'Metro', 'Segundo', 'Kilogramo'],
    correctAnswer: 'Newton',
  ),
  // Agrega más preguntas aquí
];