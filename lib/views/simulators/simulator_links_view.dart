import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SimulatorLinksView extends StatelessWidget {
  const SimulatorLinksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simuladores'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildLinkButton(
              context,
              icon: Icons.science,
              label: 'Simulador de Física',
              url: 'https://phet.colorado.edu/sims/html/projectile-motion/latest/projectile-motion_all.html?locale=es',
              color: Colors.orange,
            ),
            SizedBox(height: 20),
            _buildLinkButton(
              context,
              icon: Icons.science,
              label: 'Simulador de Química',
              url: 'https://www.educaplus.org/games/quimica',
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            _buildLinkButton(
              context,
              icon: Icons.biotech,
              label: 'Simulador de Biología',
              url: 'https://phet.colorado.edu/es/simulations/filter?subjects=biology&type=html',
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLinkButton(BuildContext context, {required IconData icon, required String label, required String url, required Color color}) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      icon: Icon(icon, size: 30),
      label: Text(
        label,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      onPressed: () => _launchURL(url),
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