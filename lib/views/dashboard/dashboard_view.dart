import 'package:flutter/material.dart';
import '../../controllers/progress_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    ProgressController progressController = ProgressController();
    var progress = progressController.getProgress(); // Obtienes el progreso

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Puntos: ${progress.points}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Trivias completadas: ${progress.completedTrivia}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 50), // Espacio antes del diseño de felicitación
            Text(
              '¡Felicidades!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Icon(
              Icons.verified,
              size: 100,
              color: Color(0xFFD1C4E9), // Color morado pastel bajo
            ),
            SizedBox(height: 10),
            Text(
              '+${progress.points} Puntos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar "Jugar de nuevo"
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD1C4E9), // Color morado pastel bajo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              ),
              child: Text(
                'Jugar de nuevo',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
