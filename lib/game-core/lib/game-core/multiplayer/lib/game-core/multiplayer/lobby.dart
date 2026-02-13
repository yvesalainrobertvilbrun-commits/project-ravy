import 'player_net.dart';
import 'room.dart';

class Lobby {
  List<Room> rooms = [];

  // Crear una nueva sala
  Room createRoom(String roomId, {int maxPlayers = 20}) {
    final room = Room(id: roomId, maxPlayers: maxPlayers);
    rooms.add(room);
    return room;
  }

  // Buscar sala disponible
  Room? findRoom() {
    for (var room in rooms) {
      if (!room.isFull()) return room;
    }
    return null;
  }

  // Unir jugador a sala
  bool joinPlayer(PlayerNet player) {
    final room = findRoom();
    if (room != null) {
      room.addPlayer(player.id);
      return true;
    }
    return false;
  }

  // Listar salas
  List<String> listRooms() {
    return rooms.map((r) => r.id).toList();
  }
}
