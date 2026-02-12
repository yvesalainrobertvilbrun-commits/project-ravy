import '../entities/enemy.dart';

class AiSystem {
  static double calculateHitChance(Enemy enemy) {
    return enemy.accuracy * enemy.aggressiveness;
  }
}
