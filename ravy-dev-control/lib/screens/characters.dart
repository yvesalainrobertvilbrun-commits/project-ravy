import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Editor de Personajes")),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          _card("Soldado Base", "Fuerza: 60  |  Velocidad: 70  |  Resistencia: 65"),
          _card("Asalto Élite", "Fuerza: 85  |  Velocidad: 80  |  Resistencia: 75"),
          _card("Francotirador", "Fuerza: 90  |  Precisión: 95  |  Sigilo: 80"),
          _card("Operador Futurista", "Habilidades IA + Tecnología avanzada"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget _card(String title, String stats) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(stats),
        trailing: Icon(Icons.edit),
      ),
    );
  }
}
