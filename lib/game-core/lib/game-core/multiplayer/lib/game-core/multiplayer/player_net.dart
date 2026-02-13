import 'package:flutter/material.dart';

class PlayerNet {
  final String name;
  final int level;
  final bool isReady;

  PlayerNet({required this.name, this.level = 1, this.isReady = false});
}

List<PlayerNet> connectedPlayers = [
  PlayerNet(name: "Jugador1", level: 5, isReady: true),
  PlayerNet(name: "Jugador2", level: 3, isReady: false),
  PlayerNet(name: "Jugador3", level: 7, isReady: true),
];

Widget playerList() {
  return ListView.builder(
    itemCount: connectedPlayers.length,
    itemBuilder: (context, index) {
      final player = connectedPlayers[index];
      return Card(
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text(player.name),
          subtitle: Text("Nivel: ${player.level}"),
          trailing: Icon(player.isReady ? Icons.check_circle : Icons.hourglass_empty),
        ),
      );
    },
  );
}
