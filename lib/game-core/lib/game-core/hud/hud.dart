import 'package:flutter/material.dart';

Widget hudAdvanced() {
  return Stack(
    children: [
      Positioned(top: 20, left: 20, child: Text("Salud: 100%", style: TextStyle(color: Colors.red, fontSize: 18))),
      Positioned(top: 50, left: 20, child: Text("Munición: 30/100", style: TextStyle(color: Colors.white))),
      Positioned(top: 80, left: 20, child: Text("Nivel: 1", style: TextStyle(color: Colors.yellow))),
      // Puedes agregar minimapa o barra de experiencia aquí
    ],
  );
}
