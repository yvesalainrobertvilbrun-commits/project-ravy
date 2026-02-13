import '../auth/auth_service.dart';

class GameCore {
  int currentLevel = 1;
  bool isBattleRoyale = false;

  void startGame({bool battleRoyale = false}) {
    isBattleRoyale = battleRoyale;
    print("Juego iniciado. Battle Royale: $isBattleRoyale");
  }

  void completeLevel() {
    print("Nivel $currentLevel completado");
    AuthService.gainXP(50); // da XP al jugador
    currentLevel++;
  }

  void resetGame() {
    currentLevel = 1;
    print("Juego reiniciado");
  }

  void toggleMode() {
    isBattleRoyale = !isBattleRoyale;
    print("Modo Battle Royale: $isBattleRoyale");
  }
}
