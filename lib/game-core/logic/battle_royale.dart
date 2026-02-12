class BattleRoyale {
  int playersAlive;

  BattleRoyale(this.playersAlive);

  void playerEliminated() {
    playersAlive--;
  }

  bool get isFinished => playersAlive <= 1;
}
