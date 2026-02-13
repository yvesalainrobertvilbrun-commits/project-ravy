class Weapon {
  final String name;
  final String type; // normal o futurista
  final int damage;
  final int fireRate;
  final int accuracy;

  Weapon({
    required this.name,
    this.type = "normal",
    required this.damage,
    required this.fireRate,
    required this.accuracy,
  });
}

// Lista de armas
final List<Weapon> weapons = [
  Weapon(name: "Pistola 9mm", damage: 40, fireRate: 60, accuracy: 70),
  Weapon(name: "Rifle M4", damage: 75, fireRate: 85, accuracy: 80),
  Weapon(name: "AK-47", damage: 90, fireRate: 70, accuracy: 75),
  Weapon(name: "Plasma Rifle X9", type: "futurista", damage: 120, fireRate: 100, accuracy: 90),
  Weapon(name: "Laser Cannon Z3", type: "futurista", damage: 150, fireRate: 80, accuracy: 95),
];
