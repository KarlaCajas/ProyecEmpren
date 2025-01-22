import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EduPlay!',
          style: TextStyle(
            color: Color(0xFF9F86C0), // Morado pastel
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF9F86C0)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Bienvenido, por favor ingresa para continuar.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB5B5B5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF9F86C0)),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB5B5B5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF9F86C0)),
                ),
                suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica de login aquí (simulada por ahora)
                Navigator.pushNamed(context, '/dashboard');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9F86C0), // Morado pastel
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child:
                  Text('Iniciar Sesión', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Si el usuario no tiene cuenta, redirige al formulario de registro
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                '¿No tienes cuenta? Regístrate aquí',
                style: TextStyle(color: Color(0xFF9F86C0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
