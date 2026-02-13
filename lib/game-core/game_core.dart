class BattleRoyale {
  final List<String> players;
  int safeZoneRadius;

  BattleRoyale({required this.players, this.safeZoneRadius = 1000});

  void shrinkZone() {
    if (safeZoneRadius > 100) safeZoneRadius -= 50;
  }

  String playerStatus(String player) {
    return "$player está en zona segura";
  }
}
