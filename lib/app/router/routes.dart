part of route_library;

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
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
        ),
        GoRoute(
          path: '/settings',
          name: 'settings',
        )
      ]
    )
  ]
);