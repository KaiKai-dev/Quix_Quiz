import 'package:flutter/widgets.dart';

extension StringExtension on String {
  String capitalize({
    bool spaced = true,
    bool byUnderscore = false
  }) {
    final List<String> list = switch (byUnderscore) {
      true => split('_'),
      false => split(' ')
    };

    List<String> characters = [];

    return list.map(
      (word) {
        characters = word.characters.toList();

        return characters[0].toUpperCase() + characters.sublist(1).join();
      }
    ).join(
      switch (spaced) { true => ' ', false => '' }
    );
  }

}