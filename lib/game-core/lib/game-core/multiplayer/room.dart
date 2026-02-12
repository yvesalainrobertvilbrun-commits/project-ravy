class Room {
  final String id;
  List<String> players;

  Room({required this.id, required this.players});

  bool get isFull => players.length >= 20;

  void addPlayer(String name) {
    if (!isFull) players.add(name);
  }
}
