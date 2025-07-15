extension IntExtensions on int {

  String get formatThousands => "${
    (this / 1000).toStringAsFixed(1)
  }K";
  
}