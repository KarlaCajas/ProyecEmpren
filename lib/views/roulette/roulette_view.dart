import 'package:flutter/material.dart';

class RouletteView extends StatelessWidget {
  const RouletteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reto Diario')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Logica para la ruleta
          },
          child: Text('Girar Ruleta'),
        ),
      ),
    );
  }
}
