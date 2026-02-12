import 'package:flutter/material.dart';
import '../auth/auth_service.dart';
import 'dashboard.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController nameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login RAVY")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameCtrl,
              decoration: InputDecoration(
                labelText: "Nombre de jugador",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Entrar"),
              onPressed: () {
                if (nameCtrl.text.isNotEmpty) {
                  AuthService.login(nameCtrl.text);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => Dashboard()),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
