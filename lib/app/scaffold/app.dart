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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.indigo.shade700,
              Colors.indigo.shade300,
            ]
          )
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: MainHeader(),
            body: Container(
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //     // radius: 1.5,
              //     // transform: GradientTransform,
              //     // focalRadius: 1,
              //     colors: [
              //       Colors.indigo.shade700,
              //       Colors.indigo.shade300,
              //     ]
              //   )
              // ),
              child: child
            ),
            bottomNavigationBar: MainFooter(routerState: routerState),
          ),
      ),
    );
    
    
  }
}