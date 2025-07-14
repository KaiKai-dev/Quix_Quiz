part of route_library;

final routes = GoRouter(
  initialLocation: '/',
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
          path: '/quiz',
          name: 'quiz',
          builder: (context, state) => BlocProvider(
            create: (context) => GameRoomCubit(),
            child: GameRoomLogic(),
          ),
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