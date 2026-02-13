import 'package:flutter/material.dart';
import '../game-core/game_core.dart';
import '../game-core/hud/hud.dart';
import '../game-core/maps/maps.dart';
import '../game-core/weapons/weapons.dart';
import '../game-core/multiplayer/lobby.dart';
import '../game-core/multiplayer/player_net.dart';
import '../game-core/multiplayer/room.dart';
import '../auth/auth_service.dart';

class GameTestScreen extends StatefulWidget {
  @override
  _GameTestScreenState createState() => _GameTestScreenState();
}

class _GameTestScreenState extends State<GameTestScreen> {
  GameCore gameCore = GameCore();
  Lobby lobby = Lobby();
  PlayerNet? player;

  int selectedMapIndex = 0;

  @override
  void initState() {
    super.initState();
    AuthService.login("Jugador1");
    player = PlayerNet(id: "p1", name: AuthService.currentUser!.username);
    lobby.joinPlayer(player!);
  }

  void completeLevel() {
    setState(() {
      gameCore.completeLevel();
    });
  }

  void nextMap() {
    setState(() {
      selectedMapIndex = (selectedMapIndex + 1) % maps.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEST GAME")),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Mapa: ${maps[selectedMapIndex].name} (${maps[selectedMapIndex].type})"),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text("Completar nivel"),
                  onPressed: completeLevel,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  child: Text("Siguiente mapa"),
                  onPressed: nextMap,
                ),
                SizedBox(height: 20),
                Text("Jugadores en sala: ${lobby.rooms.isNotEmpty ? lobby.rooms[0].players.length : 0}"),
              ],
            ),
          ),
          Hud(
            health: player!.health,
            ammo: player!.ammo,
            level: AuthService.currentUser!.level,
          ),
        ],
      ),
    );
  }
}
