import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/scaffold/footer.dart';
import 'package:quiz_app/app/scaffold/header.dart';

class AppScaffold extends StatelessWidget {
  final GoRouterState routerState;
  final Widget child;
  const AppScaffold({
    required this.routerState,
    required this.child,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainHeader(),
      body: child,
      bottomNavigationBar: MainFooter(routerState: routerState),
    );
  }
}