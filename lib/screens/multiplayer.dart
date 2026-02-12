import 'package:flutter/material.dart';
import '../game-core/multiplayer/lobby.dart';

class MultiplayerScreen extends StatefulWidget {
  @override
  _MultiplayerScreenState createState() => _MultiplayerScreenState();
}

class _MultiplayerScreenState extends State<MultiplayerScreen> {
  Lobby lobby = Lobby();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiplayer Lobby")),
      body: lobby.rooms.isEmpty
          ? Center(child: Text("No hay salas creadas"))
          : ListView(
              children: lobby.rooms.map((room) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.group),
                    title: Text("Sala ${room.id.substring(8)}"),
                    subtitle: Text(
                        "Jugadores: ${room.players.length}/20"),
                    trailing: Icon(Icons.login),
                  ),
                );
              }).toList(),
            ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text("Crear Sala"),
        onPressed: () {
          setState(() {
            lobby.createRoom();
          });
        },
      ),
    );
  }
}
