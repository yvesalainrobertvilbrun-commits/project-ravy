import 'package:flutter/material.dart';

class WeaponsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Editor de Armas")),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          _weapon("Pistola 9mm", "Daño: 40 | Cadencia: 60 | Precisión: 70"),
          _weapon("Rifle M4", "Daño: 75 | Cadencia: 85 | Precisión: 80"),
          _weapon("AK-47", "Daño: 90 | Cadencia: 70 | Precisión: 75"),
          _weapon("Plasma Rifle X9", "Tecnología futurista | Daño: 120"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget _weapon(String name, String stats) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.security),
        title: Text(name),
        subtitle: Text(stats),
        trailing: Icon(Icons.settings),
      ),
    );
  }
}
