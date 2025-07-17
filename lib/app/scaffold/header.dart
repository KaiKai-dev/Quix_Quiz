import 'package:flutter/material.dart';
import 'package:quiz_app/data/lists/tollbar_height.dart';

class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  const MainHeader({super.key});
  
  @override
  Size get preferredSize => toolbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        "Quix Quiz",
        style: TextStyle(color: Colors.white),
      ),
      toolbarHeight: MediaQuery.sizeOf(context).height * .15,
      scrolledUnderElevation: 0,
    );
  }
}