part of game_room_library;

class GameRoomState extends Equatable{
  const GameRoomState();

  @override
  List<Object?> get props => [];
}

class GameRoomLoadingState extends GameRoomState{}

class GameRoomLoadedState extends GameRoomState{
  final QuizSession sessionData;

  const GameRoomLoadedState({
    required this.sessionData
  });

  @override
  List<Object?> get props => [
    sessionData
  ];
}