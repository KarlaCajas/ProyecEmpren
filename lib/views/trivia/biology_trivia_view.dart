import 'package:flutter/material.dart';
import '../../controllers/trivia/biology_trivia_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class BiologyTriviaView extends StatelessWidget {
  final BiologyTriviaController controller = BiologyTriviaController();

  BiologyTriviaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trivia - Biología',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
        backgroundColor:
            Color(0xFFFB9C9C), // Mismo color que el botón de biología
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[50], // Fondo con un gris muy suave
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: Icon(Icons.biotech, size: 30),
              label: Text(
                'Abrir Simulador de Biología',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () => _launchURL(
                  'https://phet.colorado.edu/es/simulations/filter?subjects=biology&type=html'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: controller.questions.length,
                itemBuilder: (context, index) {
                  final question = controller.questions[index];
                  return Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.question_answer, color: Colors.green),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  question.question,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          ...question.options.map((option) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.green, // Background color
                                  foregroundColor: Colors.white, // Text color
                                  minimumSize: Size(
                                      double.infinity, 50), // Full width button
                                ),
                                onPressed: () {
                                  final isCorrect =
                                      controller.checkAnswer(question, option);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Row(
                                      children: [
                                        Icon(
                                          isCorrect
                                              ? Icons.check_circle
                                              : Icons.error,
                                          color: isCorrect
                                              ? Colors.green
                                              : Colors.red,
                                        ),
                                        SizedBox(width: 10),
                                        Text(isCorrect
                                            ? '¡Correcto!'
                                            : 'Incorrecto'),
                                      ],
                                    ),
                                    backgroundColor:
                                        isCorrect ? Colors.green : Colors.red,
                                  ));
                                },
                                child: Text(option),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
