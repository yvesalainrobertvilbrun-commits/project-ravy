import 'package:flutter/material.dart';

class Hud extends StatelessWidget {
  final int health;
  final int ammo;
  final int level;

  Hud({required this.health, required this.ammo, required this.level});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      right: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Barra de vida
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Vida: $health", style: TextStyle(fontSize: 18)),
              LinearProgressIndicator(
                value: health / 100,
                minHeight: 8,
                color: Colors.green,
                backgroundColor: Colors.red,
              ),
            ],
          ),

          // Munición
          Text("Ammo: $ammo", style: TextStyle(fontSize: 18)),

          // Nivel
          Text("Nivel: $level", style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
