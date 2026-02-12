import 'package:flutter/material.dart';
import '../game-core/entities/player.dart';
import '../game-core/entities/enemy.dart';
import '../game-core/entities/weapon.dart';
import '../game-core/systems/damage_system.dart';
import '../game-core/systems/ai_system.dart';

class SimulatorScreen extends StatefulWidget {
  @override
  _SimulatorScreenState createState() => _SimulatorScreenState();
}

class _SimulatorScreenState extends State<SimulatorScreen> {
  Player player = Player(name: "RAVY");
  Enemy enemy = Enemy(aggressiveness: 0.7, accuracy: 0.6);

  Weapon rifle = Weapon(name: "M4", damage: 25);
  Weapon plasma = Weapon(name: "Plasma X9", damage: 45, futuristic: true);

  String log = "";

  void simulateShot(Weapon weapon) {
    setState(() {
      DamageSystem.hitEnemy(enemy, weapon);
      double hitChance = AiSystem.calculateHitChance(enemy);

      if (hitChance > 0.3) {
        DamageSystem.hitPlayer(player, 12);
        log = "🔥 Intercambio de disparos";
      } else {
        log = "🎯 Disparo certero del jugador";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simulador de Combate")),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            _bar("Jugador", player.health),
            _bar("Enemigo", enemy.health),

            SizedBox(height: 20),

            Text(log, style: TextStyle(fontSize: 18)),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Disparar M4"),
              onPressed: () => simulateShot(rifle),
            ),
            ElevatedButton(
              child: Text("Disparar Plasma X9"),
              onPressed: () => simulateShot(plasma),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bar(String label, double value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$label HP: ${value.toInt()}"),
        LinearProgressIndicator(value: value / 100),
        SizedBox(height: 8),
      ],
    );
  }
}
