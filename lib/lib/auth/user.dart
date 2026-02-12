class UserProfile {
  String username;
  int level;
  int xp;

  UserProfile({
    required this.username,
    this.level = 1,
    this.xp = 0,
  });

  void gainXP(int value) {
    xp += value;
    if (xp >= 100) {
      level++;
      xp = 0;
    }
  }
}
