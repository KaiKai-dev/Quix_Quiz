part of game_room_library;

class GameRoomLogic extends StatefulWidget {
  final Quiz quizData;
  const GameRoomLogic({
    required this.quizData,
    super.key
  });

  @override
  State<GameRoomLogic> createState() => _GameRoomLogicState();
}

class _GameRoomLogicState extends State<GameRoomLogic> {

  @override
  void initState() {
    super.initState();
    print("initState");
    context.read<GameRoomCubit>().init(data: widget.quizData);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameRoomCubit, GameRoomState>(
      listener: (context, state) {
        switch(state){
          case GameRoomLoadingState(): print("loading"); break;
          case GameRoomLoadedState(): print("loaded"); break;
          case GameRoomResultState(): print("result"); break;
          default: throw UnimplementedError("Unknown state $state");

        }
      },
      builder: (context, state) {
        return switch(state){
          GameRoomLoadingState() => GameRoomLoading(),
          GameRoomLoadedState(: QuizSession sessionData) => GameRoom(sessionData: sessionData),
          GameRoomResultState() => GameRoomResults(),
        _ => throw UnimplementedError("Unknown state $state")
        } as Widget;
      } 
    );
  }
}