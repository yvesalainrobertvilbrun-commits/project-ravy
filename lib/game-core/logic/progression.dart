import '../entities/player.dart';

class ProgressionSystem {
  static void gainXP(Player player, int xp) {
    if (xp >= 100) {
      player.level++;
      player.maxHealth += 20;
      player.health = player.maxHealth;
    }
  }
}
