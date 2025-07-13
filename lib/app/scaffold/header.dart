import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  const MainHeader({super.key});
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Quix Quiz",
      ),
      toolbarHeight: MediaQuery.sizeOf(context).height * .15,
      scrolledUnderElevation: 0,
    );
  }
}