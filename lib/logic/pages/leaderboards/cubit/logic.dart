part of leaderboard_library;

class LeaderboardLogic extends StatefulWidget {
  const LeaderboardLogic({super.key});

  @override
  State<LeaderboardLogic> createState() => _LeaderboardLogicState();
}

class _LeaderboardLogicState extends State<LeaderboardLogic> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaderboardCubit, LeaderboardState>(
      builder: (context, state) => switch(state){
        LeaderboardLoadingState() => Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        LeaderboardLoadedState() => LeaderBoardsLoadedPage(),
        _ => throw UnimplementedError("Unknown state ${state.runtimeType}")
      }
    );
  }
}