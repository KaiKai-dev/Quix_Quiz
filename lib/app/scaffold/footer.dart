import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/data/enum/pages.dart';
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
      useLegacyColorScheme: false,
      // type: BottomNavigationBarType.shifting,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.indigo.shade700,
      unselectedItemColor: Colors.grey.shade700,
      selectedIconTheme: IconThemeData(
        size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        size: 20,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      currentIndex: getLocationIndex(),
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
        context.go(indexedPages[index]!);
      },
      items: RootPageEnum.values.map(
        (page) {
          return BottomNavigationBarItem(
            
            icon: Icon(
              page.displayIcon,
            ),
            label: page.displayName,
          );
        }
      ).toList(),
    );
  }

  int getLocationIndex(){
    final String _path = routerState.fullPath!.split("/")[1]; 
    return switch(_path){
      "leaderboards" => 1,
      "settings" => 2,
      "" => 0,
      _ => throw UnimplementedError("invalid page $_path")
    };
  }


  
}