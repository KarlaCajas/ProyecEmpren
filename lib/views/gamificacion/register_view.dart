import 'package:flutter/material.dart';
import '../../controllers/user_controller.dart';
import '../../models/user.dart';

class RegisterView extends StatelessWidget {
  final User defaultUser = User(
    username: "Juan Pérez",
    email: "juan.perez@example.com",
    password: "123456",
  );

  RegisterView({super.key});

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
              'Regístrate gratis y comienza tu aventura.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre de usuario',
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
                labelText: 'Teléfono',
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
                labelText: 'Email',
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
                if (!UserController.isUserRegistered()) {
                  UserController.registerUser(defaultUser);
                }
                Navigator.pushNamed(context, '/subject_selection');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9F86C0), // Morado pastel
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('Registro', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                if (!UserController.isUserRegistered()) {
                  UserController.registerUser(defaultUser);
                }
                Navigator.pushNamed(context, '/subject_selection');
              },
              child: Text(
                '¿Ya tienes una cuenta? Login',
                style: TextStyle(color: Color(0xFF9F86C0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
