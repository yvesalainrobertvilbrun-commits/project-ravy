class PlayerNet {
  String id;
  String name;
  double x;
  double y;
  int health;
  int ammo;

  PlayerNet({
    required this.id,
    required this.name,
    this.x = 0.0,
    this.y = 0.0,
    this.health = 100,
    this.ammo = 100,
  });

  void move(double newX, double newY) {
    x = newX;
    y = newY;
  }

  void takeDamage(int dmg) {
    health -= dmg;
    if (health < 0) health = 0;
  }

  void reload(int ammoCount) {
    ammo = ammoCount;
  }

  bool isAlive() => health > 0;
}
