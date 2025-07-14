part of home_page_library;

class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object?> get props => [];
}

class HomePageLoadingState extends HomePageState{}

class HomePageLoadedState extends HomePageState{
  final List<Quiz> quizzes;
  // final List<Event> events;
  // final DailyTask dailyTask;

  const HomePageLoadedState({
    required this.quizzes,
  });
}