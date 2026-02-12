class Player {
  String name;
  int level;
  double health;
  double maxHealth;

  Player({
    required this.name,
    this.level = 1,
    this.health = 100,
    this.maxHealth = 100,
  });

  void takeDamage(double dmg) {
    health -= dmg;
    if (health < 0) health = 0;
  }

  bool get isAlive => health > 0;
}
