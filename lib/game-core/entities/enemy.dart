class Enemy {
  double health;
  double aggressiveness;
  double accuracy;

  Enemy({
    this.health = 100,
    this.aggressiveness = 0.5,
    this.accuracy = 0.5,
  });

  bool get isAlive => health > 0;

  void takeDamage(double dmg) {
    health -= dmg;
    if (health < 0) health = 0;
  }
}
