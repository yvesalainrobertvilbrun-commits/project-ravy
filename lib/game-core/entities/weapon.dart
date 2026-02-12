class Weapon {
  final String name;
  final double damage;
  final bool futuristic;

  Weapon({
    required this.name,
    required this.damage,
    this.futuristic = false,
  });
}
