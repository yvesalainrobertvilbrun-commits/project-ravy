class Room {
  String id;
  int maxPlayers;
  List<String> players;

  Room({
    required this.id,
    this.maxPlayers = 20,
    List<String>? players,
  }) : players = players ?? [];

  bool addPlayer(String playerId) {
    if (players.length < maxPlayers) {
      players.add(playerId);
      return true;
    }
    return false;
  }

  void removePlayer(String playerId) {
    players.remove(playerId);
  }

  bool isFull() {
    return players.length >= maxPlayers;
  }
}
