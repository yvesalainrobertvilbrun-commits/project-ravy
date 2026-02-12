import '../entities/player.dart';
import '../entities/enemy.dart';
import '../entities/weapon.dart';

class DamageSystem {
  static void hitEnemy(Enemy enemy, Weapon weapon) {
    enemy.takeDamage(weapon.damage);
  }

  static void hitPlayer(Player player, double damage) {
    player.takeDamage(damage);
  }
}
