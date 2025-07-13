part of home_page_library;

class HomePageCubit extends Cubit<HomePageState>{
  HomePageCubit() : super(HomePageLoadingState());

  void init(){
    Future.delayed(Durations.extralong4, (){
      emit(HomePageLoadedState());
    });
  }

}