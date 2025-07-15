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
      "id": 2,
      "created_by": 1,
      "title": "Sample Quiz",
      "category": 0,
    };

    print("queryResult: $queryResult");

    final returnValue = [...queryResult, dummydata].map(
      (result) => Quiz.fromJson(data: result),
    ).toList();

    return returnValue;
  }

  void getQuestions({required int id}) async {
    final client = Supabase.instance.client.from("questions").select("*").eq("quiz_id", id).then(
      (value) {
        print("value: $value");
      }
    );
  }

}