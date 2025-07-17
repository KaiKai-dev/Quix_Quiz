part of route_library;

final routes = GoRouter(
  initialLocation: '/',
  navigatorKey: navigatorKey,
  routes: [
    ShellRoute(
      builder: (context, state, child) => AppScaffold(
        routerState: state,
        child: child, 
      ),
      routes: [
        GoRoute(
          path: '/',
          name: "home",
          builder: (context, state) => BlocProvider(
            create: (context) => HomePageCubit(),
            child: HomePageLogic(),
          )
        ),
        GoRoute(
          path: '/game_room',
          name: 'game_room',
          pageBuilder: (context, state) {
              final {"quiz_data": Quiz quiz} = state.extra as Map<String, Quiz>;
            return CustomTransitionPage(
              key: state.pageKey,
              child: BlocProvider(
                create: (context) {
                  return GameRoomCubit();
                },
                child: GameRoomLogic(quizData: quiz),
              ),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                final tween = Tween(begin: begin, end: end);
                final offsetAnimation = animation.drive(tween);
                return SlideTransition(position: offsetAnimation, child: child,);
              },
            );
          },
        ),
        GoRoute(
          path: '/leaderboards',
          name: 'leaderboards',
          builder: (context, state) => BlocProvider(
            create: (context) => LeaderboardCubit(),
            child: LeaderboardLogic(),
          ),
        ),
        // GoRoute(
        //   path: '/settings',
        //   name: 'settings',
        // )
      ]
    )
  ]
);