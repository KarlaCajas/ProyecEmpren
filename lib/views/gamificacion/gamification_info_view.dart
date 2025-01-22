import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduPlay!',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => GamificationInfoView(),
        '/login': (context) =>
            Scaffold(body: Center(child: Text('Login View'))),
        '/register': (context) =>
            Scaffold(body: Center(child: Text('Register View'))),
      },
    );
  }
}

class GamificationInfoView extends StatelessWidget {
  const GamificationInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Sección superior (fondo morado pastel y título)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade100, Colors.purple.shade200],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'EduPlay!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '¡Comienza tu aventura de aprendizaje!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Bienvenido a una nueva forma de aprender jugando. Explora, compite y crece mientras te diviertes.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Iniciar Sesión',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side:
                            BorderSide(color: Colors.purple.shade200, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Registrarse',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.purple.shade200,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple.shade200,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Text(
                  '¿Sabías que aprender divirtiéndote mejora la memoria y hace el proceso más efectivo? '
                  '¡La diversión es clave para aprender mejor!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            // Íconos interactivos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Explora nuestras actividades:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildHoverableActivityIcon(
                        icon: Icons.science,
                        label: 'Simuladores',
                        color: Colors.green,
                      ),
                      _buildHoverableActivityIcon(
                        icon: Icons.help_outline,
                        label: 'Trivias',
                        color: Colors.orange,
                      ),
                      _buildHoverableActivityIcon(
                        icon: Icons.extension,
                        label: 'Quiz',
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHoverableActivityIcon({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return HoverableIcon(
      icon: icon,
      label: label,
      iconColor: color,
    );
  }
}

class HoverableIcon extends StatefulWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const HoverableIcon({
    required this.icon,
    required this.label,
    required this.iconColor,
    super.key,
  });

  @override
  _HoverableIconState createState() => _HoverableIconState();
}

class _HoverableIconState extends State<HoverableIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedScale(
        scale: isHovered ? 1.2 : 1.0,
        duration: Duration(milliseconds: 200),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: widget.iconColor.withOpacity(0.2),
              child: Icon(widget.icon, size: 30, color: widget.iconColor),
            ),
            SizedBox(height: 8),
            Text(
              widget.label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
