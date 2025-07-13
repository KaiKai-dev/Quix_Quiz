enum Category {
  general,

  //? for future purposes
  scienceAndTechnology,
  math,
  politics,
  history;

  static Category fromInt(int value) => Category.values[value];
}