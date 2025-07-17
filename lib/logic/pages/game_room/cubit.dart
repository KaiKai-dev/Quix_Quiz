part of game_room_library;

class GameRoomCubit  extends Cubit<GameRoomState>{
  GameRoomCubit() : super(GameRoomLoadingState());

  void init({required Quiz data}) async {
    final supabase = Supabase.instance.client;

    final List<Map<String, dynamic>> result = await supabase.from("questions").select().eq("quiz_id", data.id);

    final List<Question> parsedQuestions = result.map((element) {
      return Question.fromJson(data: element);
    }).toList();

    emit(
      GameRoomLoadedState(
        sessionData: QuizSession.createRoom(questions: parsedQuestions, quizData: data)
      )
    );
  }
}