import 'package:flutter/material.dart';

class MapEditorScreen extends StatefulWidget {
  @override
  _MapEditorScreenState createState() => _MapEditorScreenState();
}

class _MapEditorScreenState extends State<MapEditorScreen> {
  List<MapObject> objects = [];
  String selectedType = "spawn";

  void addObject(Offset pos) {
    setState(() {
      objects.add(MapObject(type: selectedType, position: pos));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Editor Pro de Mapas")),
      body: Column(
        children: [
          // Toolbar
          Container(
            height: 60,
            color: Colors.black54,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _tool("spawn", Icons.person_add),
                _tool("loot", Icons.card_giftcard),
                _tool("cover", Icons.security),
                _tool("zone", Icons.blur_on),
                _tool("building", Icons.apartment),
                _tool("portal", Icons.flash_on),
              ],
            ),
          ),

          // Canvas
          Expanded(
            child: GestureDetector(
              onTapDown: (details) {
                RenderBox box = context.findRenderObject() as RenderBox;
                Offset pos = box.globalToLocal(details.globalPosition);
                addObject(pos);
              },
              child: Container(
                color: Colors.grey.shade900,
                child: Stack(
                  children: objects.map((obj) {
                    return Positioned(
                      left: obj.position.dx,
                      top: obj.position.dy,
                      child: Icon(
                        obj.icon,
                        color: obj.color,
                        size: 28,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tool(String type, IconData icon) {
    return IconButton(
      icon: Icon(icon,
          color: selectedType == type ? Colors.blue : Colors.white),
      onPressed: () {
        setState(() {
          selectedType = type;
        });
      },
    );
  }
}

class MapObject {
  final String type;
  final Offset position;

  MapObject({required this.type, required this.position});

  IconData get icon {
    switch (type) {
      case "spawn":
        return Icons.person_add;
      case "loot":
        return Icons.card_giftcard;
      case "cover":
        return Icons.security;
      case "zone":
        return Icons.blur_on;
      case "building":
        return Icons.apartment;
      case "portal":
        return Icons.flash_on;
      default:
        return Icons.circle;
    }
  }

  Color get color {
    switch (type) {
      case "spawn":
        return Colors.green;
      case "loot":
        return Colors.amber;
      case "cover":
        return Colors.blueGrey;
      case "zone":
        return Colors.redAccent;
      case "building":
        return Colors.white;
      case "portal":
        return Colors.purpleAccent;
      default:
        return Colors.white;
    }
  }
}
