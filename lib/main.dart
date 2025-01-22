import 'package:flutter/material.dart';
import 'views/gamificacion/gamification_info_view.dart';
import 'views/gamificacion/login_view.dart';
import 'views/gamificacion/register_view.dart';
import 'views/dashboard/dashboard_view.dart';
import 'views/trivia/subject_selection_view.dart'; // Importamos la vista de selección de materia
import 'views/trivia/biology_trivia_view.dart';
import 'views/trivia/chemistry_trivia_view.dart';
import 'views/trivia/physics_trivia_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => GamificationInfoView(),
        '/login': (context) => LoginView(),
        '/register': (context) => RegisterView(),
        '/dashboard': (context) => DashboardView(),
        '/subject_selection': (context) => SubjectSelectionView(),
        '/trivia/biology': (context) => BiologyTriviaView(),
        '/trivia/chemistry': (context) => ChemistryTriviaView(),
        '/trivia/physics': (context) => PhysicsTriviaView(),
      },
    );
  }
}