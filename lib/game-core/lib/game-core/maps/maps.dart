class GameMap {
  final String name;
  final String type; // normal o futurista
  final int maxPlayers;

  GameMap({
    required this.name,
    this.type = "normal",
    this.maxPlayers = 20,
  });
}

// Ejemplos de mapas
final List<GameMap> maps = [
  GameMap(name: "Ciudad Normal", type: "normal", maxPlayers: 20),
  GameMap(name: "Neon Zone", type: "futurista", maxPlayers: 50),
  GameMap(name: "Desierto Battle Royale", type: "futurista", maxPlayers: 100),
];
