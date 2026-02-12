import 'room.dart';

class Lobby {
  List<Room> rooms = [];

  Room createRoom() {
    final room = Room(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      players: [],
    );
    rooms.add(room);
    return room;
  }
}
