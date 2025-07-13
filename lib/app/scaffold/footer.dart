import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/data/lists/route_data.dart';
import 'package:quiz_app/presentation/global_components/global_toast.dart';

class MainFooter extends StatelessWidget {
  final GoRouterState routerState;
  const MainFooter({
    required this.routerState,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index){
        if(index == 2) {
          FToast().init(context).showToast(
            child: GlobalToast(
              title: "Coming Soon", 
              description: "This area is under construction"
            )
          );
          return;
        }
        (indexedPages[index]!);
      },
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon( Icons.home )
        ),
        BottomNavigationBarItem(
          label: "Leaderboard",
          icon: Icon( Icons.leaderboard )
        ),
        BottomNavigationBarItem(
          label: "Settings",
          icon: Icon(Icons.settings)
        ),
      ]
    );
  }

  int getLocationIndex(){
    final String _path = routerState.fullPath ?? "/";
    return switch((
      _path.startsWith("/leaderboards"),
      _path.startsWith("/settings"),
    )){
      (true, _) => 1,
      (_, true) => 2,
      _ => 0
    };
  }


  
}