import 'package:flutter/material.dart';

enum RootPageEnum{
  home,
  leaderboard,
  settings;

  String get displayName => switch(this){
    home => "Home",
    leaderboard => "Leaderboard",
    settings => "Settings",
  };
  
  IconData get displayIcon => switch(this){
    home => Icons.home_rounded ,
    leaderboard => Icons.leaderboard_rounded,
    settings => Icons.settings_rounded,
  };
}