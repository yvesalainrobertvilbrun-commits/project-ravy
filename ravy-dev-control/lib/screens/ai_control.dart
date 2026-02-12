import 'package:flutter/material.dart';

class AiControlScreen extends StatefulWidget {
  @override
  _AiControlScreenState createState() => _AiControlScreenState();
}

class _AiControlScreenState extends State<AiControlScreen> {
  double dificultad = 0.5;
  double agresividad = 0.5;
  double precision = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RAVY IA Control")),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Control Inteligencia Artificial",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            SizedBox(height: 20),

            _slider("Dificultad", dificultad, (v) {
              setState(() => dificultad = v);
            }),

            _slider("Agresividad", agresividad, (v) {
              setState(() => agresividad = v);
            }),

            _slider("Precisión", precision, (v) {
              setState(() => precision = v);
            }),

            SizedBox(height: 25),

            ElevatedButton.icon(
              icon: Icon(Icons.psychology),
              label: Text("Simular IA"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text("Simulación IA"),
                    content: Text(
                        "Dificultad: ${(dificultad * 100).toInt()}%\n"
                        "Agresividad: ${(agresividad * 100).toInt()}%\n"
                        "Precisión: ${(precision * 100).toInt()}%"),
                    actions: [
                      TextButton(
                        child: Text("OK"),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _slider(String label, double value, Function(double) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$label: ${(value * 100).toInt()}%"),
        Slider(
          value: value,
          onChanged: onChanged,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
