import 'package:flutter/material.dart';

class SimulatorLinksView extends StatelessWidget {
  const SimulatorLinksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simuladores')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Logica para abrir simuladores
          },
          child: Text('Ver simuladores'),
        ),
      ),
    );
  }
}
