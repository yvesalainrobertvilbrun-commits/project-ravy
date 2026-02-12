import 'package:flutter/material.dart';

void main() {
  runApp(RavyDevControl());
}

class RavyDevControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RAVY Dev Control',
      theme: ThemeData.dark(),
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RAVY Dev Control')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(12),
        children: [
          _btn(context, "Personajes"),
          _btn(context, "Armas"),
          _btn(context, "Mapas"),
          _btn(context, "HUD"),
          _btn(context, "Logros"),
          _btn(context, "RAVY IA"),
        ],
      ),
    );
  }

  Widget _btn(BuildContext context, String title) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
