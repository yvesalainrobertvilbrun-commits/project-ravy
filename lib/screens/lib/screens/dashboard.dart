import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';
import 'multiplayer.dart';
import 'game_test.dart'; // NUEVO: importar la pantalla de prueba

class Dashboard extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void logout(BuildContext context) async {
    await _auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => LoginScreen()));
  }

  Widget _btnNav(BuildContext context, String title, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => page));
      },
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = _auth.currentUser;
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard RAVY")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Bienvenido: ${user?.email ?? 'Jugador'}"),
            SizedBox(height: 20),
            _btnNav(context, "Multiplayer", MultiplayerScreen()),
            SizedBox(height: 10),
            _btnNav(context, "Probar Juego", GameTestScreen()), // NUEVO BOTÓN
            SizedBox(height: 10),
            ElevatedButton(
              child: Text("Logout"),
              onPressed: () => logout(context),
            ),
          ],
        ),
      ),
    );
  }
}
