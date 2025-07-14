enum Category {
  general,

  //? for future purposes
  sports,
  politics,
  science,
  music,
  fashion,
  math,
  history;

  static Category fromInt(int value) => Category.values[value];
}