import 'package:flutter/material.dart';

class HudScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HUD Simulator")),
      body: Stack(
        children: [
          Container(
            color: Colors.black87,
            child: Center(
              child: Text(
                "Vista previa del HUD",
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ),
          ),

          // Joystick izquierdo
          Positioned(
            left: 20,
            bottom: 40,
            child: _control(Icons.circle, "Mover"),
          ),

          // Botón disparo
          Positioned(
            right: 20,
            bottom: 60,
            child: _control(Icons.radio_button_checked, "Disparo"),
          ),

          // Botón salto
          Positioned(
            right: 100,
            bottom: 120,
            child: _control(Icons.arrow_upward, "Salto"),
          ),

          // Botón recarga
          Positioned(
            right: 20,
            bottom: 140,
            child: _control(Icons.refresh, "Recargar"),
          ),
        ],
      ),
    );
  }

  Widget _control(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.blueAccent,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 11)),
      ],
    );
  }
}
