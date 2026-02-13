import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  final String roomName;

  RoomScreen({this.roomName = "Sala Principal"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Room: $roomName")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Jugadores en la sala:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _playerTile("Jugador1"),
            _playerTile("Jugador2"),
            _playerTile("Jugador3"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("¡Partida iniciada!")),
                );
              },
              child: Text("Iniciar Partida"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _playerTile(String name) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(name),
        trailing: Icon(Icons.check),
      ),
    );
  }
}
