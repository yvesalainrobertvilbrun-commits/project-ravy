import 'package:flutter/material.dart';
import 'room.dart';
import 'player_net.dart';

class LobbyScreen extends StatelessWidget {
  final String lobbyName;

  LobbyScreen({this.lobbyName = "Lobby Principal"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lobby: $lobbyName")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Jugadores conectados:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(child: playerList()), // Lista de player_net.dart
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar a la sala
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoomScreen()),
                );
              },
              child: Text("Entrar a la Sala"),
            ),
          ],
        ),
      ),
    );
  }
}
