import 'package:flutter/material.dart';

class AchievementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Logros & Progresión")),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          _achievement("Primer Sangre", "Elimina tu primer enemigo", true),
          _achievement("Dominador", "Gana 5 partidas seguidas", false),
          _achievement("Francotirador", "50 bajas con sniper", false),
          _achievement("Nivel Futuro", "Desbloquea armas futuristas", false),
          _achievement("Leyenda RAVY", "Nivel máximo", false),
        ],
      ),
    );
  }

  Widget _achievement(String title, String desc, bool unlocked) {
    return Card(
      child: ListTile(
        leading: Icon(
          unlocked ? Icons.emoji_events : Icons.lock,
          color: unlocked ? Colors.amber : Colors.grey,
        ),
        title: Text(title),
        subtitle: Text(desc),
        trailing: unlocked
            ? Icon(Icons.check_circle, color: Colors.green)
            : Icon(Icons.lock_outline),
      ),
    );
  }
}
