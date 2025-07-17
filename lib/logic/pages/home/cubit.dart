part of home_page_library;

class HomePageCubit extends Cubit<HomePageState>{
  HomePageCubit() : super(HomePageLoadingState());

  void init() {
    Future.delayed(Durations.extralong4, () async {
      final List<Quiz> quizzes = await getQuizzes(); 
      emit( HomePageLoadedState(
        quizzes: quizzes
      ));
    });
  }

  Future<List<Quiz>> getQuizzes() async {
    final List<Map<String, dynamic>>  queryResult = await Supabase.instance.client.from("quizzes").select();

    final Map<String, dynamic> dummydata = {
      "id": 1,
      "created_by": 1,
      "title": "Sample Quiz",
      "category": 1,
    };
    final List<Map<String, dynamic>> dummyList = [...queryResult, dummydata].toList();
    List<Quiz> returnValue = [];

    for (var element in dummyList) {
      final questionCount = await getQuestionCount(id: element["id"]);
      returnValue.add(
        Quiz.fromJson(data: {
          ...element,
          "question_count": questionCount,
        })
      );
    }
    return returnValue;
  }

  Future<int> getQuestionCount({required int id}) async {
    final client = Supabase.instance.client;

    final query = await client.from("questions").select("*").eq("quiz_id", id).count();
    return query.count;
  }

}