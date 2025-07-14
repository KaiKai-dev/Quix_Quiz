part of home_page_library;

class HomePageLogic extends StatefulWidget {
  const HomePageLogic({super.key});

  @override
  State<HomePageLogic> createState() => _HomePageLogicState();
}

class _HomePageLogicState extends State<HomePageLogic> {

  @override
  void initState() {
    context.read<HomePageCubit>().init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) => switch(state){
        HomePageLoadedState() => HomePageLoadedPage(),
        HomePageLoadingState() => HomePageLoadingPage(),
        _ => throw UnimplementedError("Unknown state $state")
        
      }
    );
  }
}