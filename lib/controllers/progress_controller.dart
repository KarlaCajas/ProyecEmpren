import '../models/progress.dart';

class ProgressController {
  // Método para obtener el progreso del usuario
  Progress getProgress() {
    return Progress(points: 100, completedTrivia: 5);
  }
}
