class RouletteController {
  // Método para obtener un reto diario aleatorio
  String getDailyChallenge() {
    List<String> challenges = [
      "Completa una trivia de biología",
      "Responde una pregunta de física",
      "Realiza un simulador de química",
    ];
    return challenges[(DateTime.now().millisecondsSinceEpoch % challenges.length)];
  }
}
