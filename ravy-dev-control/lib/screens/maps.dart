import 'package:flutter/material.dart';

class MapsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Editor de Mapas")),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          _map("Neon Zone", "Ciudad híbrida real + futurista"),
          _map("Steel Factory", "Fábrica industrial abandonada"),
          _map("Desert Base", "Base militar en desierto"),
          _map("Dominion (BR)", "Mapa gigante Battle Royale"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location_alt),
        onPressed: () {},
      ),
    );
  }

  Widget _map(String name, String desc) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.map),
        title: Text(name),
        subtitle: Text(desc),
        trailing: Icon(Icons.edit_location),
      ),
    );
  }
}
