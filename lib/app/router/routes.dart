part of route_library;

final routes = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: "HomePage",
    builder: (context, state) => BlocProvider(
      create: (context) => HomePageCubit(),
      child: HomePageLogic(),
    )
  )
]);