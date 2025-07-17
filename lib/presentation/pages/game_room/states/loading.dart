part of game_room_library;

class GameRoomLoading extends StatelessWidget {
  const GameRoomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator.adaptive(
        backgroundColor: Colors.white,
      ),
    );
  }
}