import 'package:flutter/material.dart';

class SubjectSelectionView extends StatelessWidget {
  const SubjectSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selecciona una materia',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0, // Quita la sombra del AppBar
        backgroundColor: Colors.white, // Fondo blanco
        foregroundColor: Colors.black, // Texto negro
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSubjectButton(
              context: context,
              icon: Icons.rocket_launch,
              title: 'Física',
              route: '/trivia/physics',
              color: Color(0xFF6B9FED),
            ),
            const SizedBox(height: 16),
            _buildSubjectButton(
              context: context,
              icon: Icons.science,
              title: 'Química',
              route: '/trivia/chemistry',
              color: Color(0xFF7ED3B2),
            ),
            const SizedBox(height: 16),
            _buildSubjectButton(
              context: context,
              icon: Icons.biotech,
              title: 'Biología',
              route: '/trivia/biology',
              color: Color(0xFFFB9C9C),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubjectButton({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String route,
    required Color color,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, size: 32),
                const SizedBox(width: 16),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios, size: 20),
          ],
        ),
      ),
    );
  }
}
